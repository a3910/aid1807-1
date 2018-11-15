from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index_views(request):
  return HttpResponse("这是网站首页")

def login_views(request):

  return HttpResponse("这是登录首页")

def register_views(request):
  return HttpResponse("这是注册首页")

