import json

from django.core import serializers
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from .forms import *

# Create your views here.
def index_views(request):
  return render(request,'index.html')

def login_views(request):
  if request.method == 'GET':
    #获取请求源地址,如果没有则获取'/'
    url = request.META.get('HTTP_REFERER','/')
    # print("源地址是"+url)

    #判断session中是否有uid和uphone
    if 'uid' in request.session and 'uphone' in request.session:
      return redirect(url)
    else:
      #判断cookie中是否有uid和uphone,
      if 'uid' in request.COOKIES and 'uphone' in request.COOKIES:
        #如果有的话则取出来并保存进session,再回首页
        uid=request.COOKIES['uid']
        uphone=request.COOKIES['uphone']
        request.session['uid']=uid
        request.session['uphone']=uphone
        return redirect(url)
      else:
        form = LoginForm()
        #构建响应对象,并将url保存进cookies
        resp = render(request,'login.html',locals())
        resp.set_cookie('url',url)
        return resp

  else:
    # #post请求
    # # 获取源地址
    # url = request.META.get('HTTP_REFERER','/')
    # print("POST中的请求源地址"+url)
    #接收uphone和upwd判断是否登录成功
    uphone=request.POST['uphone']
    upwd=request.POST['upwd']
    users = Users.objects.filter(uphone=uphone,upwd=upwd)
    #如果成功继续向下执行,否则回到登录页
    if users:
      #登录成功,将id和uphone保存进session
      id=users[0].id
      request.session['uid']=id
      request.session['uphone']=uphone
      #如果有记住密码则将数据保存进cookies
      #先从cookies中将url的值获取出来
      url = request.COOKIES.get('url','/')
      resp = redirect(url)
      #如果url存在于cookies的话，则将url从cookies中删除
      if 'url' in request.COOKIES:
        resp.delete_cookie('url')
      if 'isSave' in request.POST:
        expires = 60*60*24*365
        resp.set_cookie('uid',id,expires)
        resp.set_cookie('uphone',uphone,expires)
      return resp
    else:
      #登录失败,回到登录页面
      return redirect('/login/')

# def register_views(request):
#   return render(request,'register.html')

def register_views(request):
  if request.method == "GET":
    return render(request,'register.html')
  else:
    uphone = request.POST['uphone']
    upwd = request.POST['upwd']
    uname = request.POST['uname']
    uemail = request.POST['uemail']

# def login_views(request):
#   if request.method == 'GET':
#     # 判断uphone的值是否在cookies中
#     if 'uphone' in request.COOKIES:
#       return HttpResponse('您曾经登陆过')
#     else:
#       form = LoginForm()
#       return render(request,'login.html',locals())
#   else:
#     #接收前端数据,判断登录
#     uphone=request.POST['uphone']
#     upwd=request.POST['upwd']
#
#     users=Users.objects.filter(uphone=uphone,upwd=upwd)
#     if users:
#       #登录成功
#       resp = HttpResponse('登录成功')
#       #如果记住密码，则将数据保存进cookie
#       if 'isSave' in request.POST:
#         resp.set_cookie('uphone',uphone,60*60*24*366)
#       return resp
#     else:
#       return HttpResponse('登录失败')

def test_views(request):
  return render(request,'test.html')

def checklogin_views(request):
  if 'uid' in request.session and 'uphone' in request.session :
    #有登录信息
    id = request.session.get('uid')
    uname = Users.objects.get(id=id).uname
    dic ={
      'loginStatus':1,
      'uname':uname,
    }
  elif 'uid' in request.COOKIES and 'uphone' in request.COOKIES:
    #cookies中有登录信息取出数据并提取出来
    uid = request.COOKIES['uid']
    uphone = request.COOKIES['uphone']
    request.session['uid']=uid
    request.session['uphone']=uphone
    #根据uid的值取出对应的uname ,并构建成字典再响应给
    uname = Users.objects.get(id=uid).uname
    dic ={
      'loginStatus':1,
      'uname':uname,
    }
  else:
    #没有登录信息
    dic = {
      'loginStatus': 0,
    }
  return HttpResponse(json.dumps(dic))

def checkuphone_views(request):
  uphone = request.GET['uphone']
  users=Users.objects.filter(uphone=uphone)
  if users:
    dic={'status' : 1,
    'msg' : '手机号码已经存在'
    }
  else:
    dic = {
      'status': 0,
      'msg': "通过",
    }
  return HttpResponse(json.dumps(dic))

def logout_views(request):
  # # 判断session中是否有登录信息，有的话则清除
  # if 'uid' in request.session and 'uphone' in request.session:
  #   del request.session['uid']
  #   del request.session['uphone']
  #   # 构建响应对象：哪发的退出请求，则返回到哪去
  #   url = request.META.get('HTTP_REFERER', '/')
  #   resp = HttpResponseRedirect(url)
  #   # 判断cookies中是否有登录信息，有的话，则删除
  #   if 'uid' in request.COOKIES and 'uphone' in request.COOKIES:
  #     resp.delete_cookie('uid')
  #     resp.delete_cookie('uphone')
  #   return resp
  # return redirect('/')
  if 'uid' in request.session and 'uphone' in request.session:
    del request.session['uid']
    del request.session['uphone']
    url = request.META.get('HTTP_REFERER','/')
    resp = redirect(url)

    if 'uid' in request.COOKIES and 'uphone' in request.COOKIES:
      resp.delete_cookie('uid')
      resp.delete_cookie('uphone')
    return resp
  return redirect('/')

#加载所有的商品类型以及对应的每个类型下的前10条数据
def type_goods_views(request):
  all_list = []
  #加载所有的商品类型
  types = GoodType.objects.all()
  for type in types:
    type_json = json.dumps(type.to_dict())
    #获取type类型下的最新的10条数据
    goods = type.goods_set.all()[0:10]
    #print(goods)
    goods_json = serializers.serialize('json',goods)
    print(goods_json)
    #将type_json和g_list_json封装到一个字典中
    dic = {
      "type":type_json,
      "goods":goods_json,
    }
    #将dic字典追加到all_list中
    all_list.append(dic)
  return HttpResponse(json.dumps(all_list))
