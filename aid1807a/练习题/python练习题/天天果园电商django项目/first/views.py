from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from first.models import *


def index(request):
    #查询数据库，获取需要的数据list，交给模板显示
    '''创建一个字典,
    {'goods_set':[
      (type,[goods1,goods2,goods3,goods4]),
    ]}
    '''
    #1.拿到所有类型
    types = GoodsType.objects.order_by('flag') #order_by按指定顺序提取数据
    #2.生成商品集合
    goods_set = []
    for type in types:
        goods_set.append((type,type.goods_set.order_by('-id')[0:4]))
    #3.放入字典
    context = {'goods_set':goods_set}
    return render(request,'first/index.html',context)

def detail(request,id):
    goods = Goods.objects.get(pk=id)
    newlist = goods.type.goods_set.order_by('-id')[:2]
    #记录和维护用户最近浏览过的商品id
    str_id = '%d'%goods.id
    goods_ids = request.COOKIES.get('goods_ids','')
    if goods_ids != '':
        idslist = goods_ids.split(',')
        #判断是否浏览过该商品，如果浏览过
        if idslist.count(str_id)>=1 :
            idslist.remove(str_id)
        idslist.insert(0,str_id) #插入到第一位
        #如果超过五个，删除最后一个
        if len(idslist)>=6:
            idslist.pop()
        goods_ids = ','.join(idslist)

    else:
        #如果是第一次产生浏览记录
        goods_ids = str_id
        #将goods_ids放入cookie中
    response = render(request,'first/detail.html',{'goods':goods,'newlist':newlist})
    response.set_cookie('goods_ids',goods_ids,max_age=99999)
    return response