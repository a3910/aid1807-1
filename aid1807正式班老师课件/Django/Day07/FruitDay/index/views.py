from django.http import HttpResponse
from django.shortcuts import render, redirect
from .forms import *

# Create your views here.
def index_views(request):
  return render(request,'index.html')

def login_views(request):
  if request.method == 'GET':
    #判断session中是否有uid和uphone
    if 'uid' in request.session and 'uphone' in request.session:
      return redirect('/')
    else:
      #判断cookie中是否有uid和uphone,
      if 'uid' in request.COOKIES and 'uphone' in request.COOKIES:
        #如果有的话则取出来并保存进session,再回首页
        uid=request.COOKIES['uid']
        uphone=request.COOKIES['uphone']
        request.session['uid']=uid
        request.session['uphone']=uphone
        return redirect('/')
      else:
        form = LoginForm()
        return render(request,'login.html',locals())
  else:
    #post请求
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
      resp = redirect('/')
      if 'isSave' in request.POST:
        expires = 60*60*24*365
        resp.set_cookie('uid',id,expires)
        resp.set_cookie('uphone',uphone,expires)
      return resp
    else:
      #登录失败,回到登录页面
      return redirect('/login/')

def register_views(request):
  return render(request,'register.html')


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