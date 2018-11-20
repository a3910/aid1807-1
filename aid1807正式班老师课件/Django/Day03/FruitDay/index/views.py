from django.http import HttpResponse
from django.shortcuts import render
from .forms import *
# Create your views here.
def index_views(request):
  return render(request,'index.html')

# def login_views(request):
#   if request.method == "GET":
#     form = LoginForm()
#     return render(request,'login.html',locals())
#   else:
#     pass

def register_views(request):
  return render(request,'register.html')

def login_views(request):
  if request.method == "GET":
    if 'uphone' in request.COOKIES:
      return HttpResponse("你曾经登录过")
    else:
      form = LoginForm()
      return render(request,'login.html',locals())
  else:
    #接收前端数据，判断登录
    uphone=request.POST['uphone']
    upwd = request.POST['upwd']
    users=Users.objects.filter(uphone=uphone,upwd=upwd)
    if users:
      #登陆成功
      resp = HttpResponse("OK")
      #如果记住密码，则存到cookie
      if 'isSave' in request.POST:
        resp.set_cookie('uphone',uphone,60*60*24*365)
      return resp
    else:
      return HttpResponse("break")