from hashlib import sha1

from django.contrib import messages
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect

# Create your views here.
from first.models import Goods
from order.models import OrderInfo, OrderLine
from user.models import *


def login_decorator(func):
    def login_fun(request, *args, **kwargs):
        if request.session.has_key('user_id'):
            return func(request, *args, **kwargs)
        else:
            #把用户想要去的地方存到cookie中
            '''
                http://www.tedu.cn/user/usercenter?a=1&b=2&c=3... path拿到:user/usercenter get_full_path拿到:user/usercenter?a=1&b=2&c=3
            '''
            response = redirect('/user/login/')
            response.set_cookie('url',request.get_full_path()) #保存url到cookie
            return response
    return login_fun


def register(req):
    return render(req,'user/register.html')

def register_handle(req):
    user_name = req.POST['user_name']
    pwd = req.POST['pwd']
    cpwd = req.POST['cpwd']
    email = req.POST['email']
    if pwd != cpwd:
        return redirect('/user/register/')
    if len(UserInfo.objects.filter(uname=user_name)) > 0:
        return redirect('/user/register/')
    user = UserInfo()
    user.uname = user_name
    user.upwd = sha1(pwd.encode('utf-8')).hexdigest()
    user.email = email
    user.save()
    return redirect('/user/login')

def login(request):
    return render(request,'user/login.html')

def login_handle(request):
    name = request.POST['username']
    pwd = request.POST['pwd']
    pwd_jm = sha1(pwd.encode('utf-8')).hexdigest()
    context = {}
    user = UserInfo.objects.filter(uname=name)[0]
    if user and pwd_jm == user.upwd:
            request.session['user_id'] = user.id
            request.session['user_name'] = user.uname
            url = request.COOKIES.get('url','/first/') #读取用户的登录前请求的url
            redi = redirect(url)
            redi.delete_cookie('url')
            return redi
    else:
        request.session['msg'] = '用户名或密码错误'
        return redirect('/user/login')

#登出
def logout(request):
    del request.session['user_id']
    del request.session['user_name']
    return redirect('/first/')

@login_decorator
def center_info(request):
    user = UserInfo.objects.get(pk=request.session['user_id'])
    #用户最近浏览商品
    goods_ids = request.COOKIES.get('goods_ids','')
    ids_list = goods_ids.split(',')
    goods_list = []
    if ids_list[0] != '':
        for goods_id in ids_list:
            goods = Goods.objects.get(pk=int(goods_id))
            goods_list.append(goods)

    context = {'user':user,'goods_list':goods_list}
    return render(request,'user/user_center_info.html',context)

@login_decorator
def center_order(request):
    user_id = UserInfo.objects.get(pk=request.session['user_id'])
    orderlist = OrderInfo.objects.filter(user_id=user_id)
    return render(request,'user/user_center_order.html',{'orderlist':orderlist})

@login_decorator
def center_site(request):
    user_id = request.session.get('user_id')
    context = {'sites': UserAddr.objects.filter(user_id=user_id)}
    return render(request,'user/user_center_site.html',context)

@login_decorator
def site_handle(req):
    site = UserAddr()
    user_id = req.session.get('user_id')
    site.user = UserInfo.objects.get(pk=user_id)
    site.uname = req.POST['uname']
    site.address = req.POST['uaddress']
    site.cellphone = req.POST['ucellphone']
    site.post = req.POST['upost']
    site.save()
    context = {'sites':UserAddr.objects.filter(user_id=user_id)}
    return render('user/center_site',context)