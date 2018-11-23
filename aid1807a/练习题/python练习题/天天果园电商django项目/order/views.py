from datetime import datetime

from django.core.paginator import Paginator
from django.http import JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from first.models import Goods
from order.models import *
from user.models import UserInfo
from user.views import login_decorator


@login_decorator
def cart(req):
    user = UserInfo.objects.get(pk=req.session['user_id'])
    carts = user.cartinfo_set.all()
    context = {'carts': carts}
    return render(req,'order/cart.html',context)

@login_decorator
def add(request,goods_id,count):
    #哪个用户
    uid = request.session.get('user_id')
    #买哪个商品
    gid = int(goods_id)
    #买多少个
    cnt = int(count)
    carts = CartInfo.objects.filter(cuser_id=uid,cgoods_id=goods_id)
    if len(carts)==1:
        cart = carts[0]
        cart.ccount += cnt
    else:
        cart = CartInfo()
        cart.cuser_id = uid
        cart.cgoods_id = gid
        cart.ccount = cnt
    cart.save()
    if request.is_ajax():
        cnt = len(CartInfo.objects.filter(cuser_id=uid))
        return JsonResponse({"count":cnt})
    return redirect('/order/cart/')

def list(req,id,pIndex=1):
    goods = Goods.objects.filter(type_id=id)
    newlist = goods.order_by('-id')[:2]
    paginator = Paginator(goods, 10)
    page = paginator.page(pIndex)
    return render(req,'order/list.html',{'page':page,'newlist':newlist})

@login_decorator
def mycart_count(req):
    '''返回当前用户购物车中的条目数量'''
    count = CartInfo.objects.filter(cuser_id=req.session.get('user_id')).count()
    return JsonResponse({'count':count})

@login_decorator
def cart_delete(req,cart_id):
    cart = CartInfo.objects.get(pk=cart_id)
    cart.delete()
    return redirect('/order/cart/')

@login_decorator
def edit(req,cart_id,count):
    try:
        cart = CartInfo.objects.get(pk=cart_id)
        cart.ccount = count
        cart.save()
        data = {'result':0}
    except:
        data = {'result':count}
    return JsonResponse(data)

def place_order(req):
    #orderlist = []
    #for order in req.GET.getlist('cart_id'):#req.GET.getlist拿到GET中的cart_id列表
        #orderlist.append(CartInfo.objects.filter(pk=order)[0])
    cart_ids = req.GET.getlist('cart_id')
    carts = CartInfo.objects.filter(id__in=cart_ids)
    str_ids = ','.join(cart_ids)
    return render(req,'order/place_order.html',{'carts':carts,'str_ids':str_ids})

def order_handle(req):
    str_ids = req.POST.getlist('str_ids')
    str_ids = str_ids[0].split(',')
    print(str_ids)
    total = req.POST.get('total')
    #创建订单和订单明细，保存到数据库
    order = OrderInfo()
    order.user = UserInfo.objects.get(pk=req.session['user_id'])
    order.order_address = order.user.address
    order.total = total
    order.order_date = datetime.now()
    order.save()
    for orderl in CartInfo.objects.filter(id__in=str_ids):
        orderline = OrderLine()
        orderline.goods = orderl.cgoods
        orderline.order = order
        orderline.count = orderl.ccount
        orderline.price = orderl.cgoods.price
        orderline.save()
        #删除购物车中的对应项
        orderl.delete()
    return redirect('user/center_order/')