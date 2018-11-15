from django.http import HttpResponse
from django.shortcuts import render
from django.urls import reverse
from .models import *
# Create your views here.



def parent_views(request):
  return render(request,'01-parent.html')

def child_views(request):
  return render(request,'02-child.html')

def alias_views(request):
  return HttpResponse("成功访问到03-test-alias路径")

def alias_params_views(request,year):
  return HttpResponse('<h1>传递进来的参数为:%s</h1>' % year)

def reverse_views(request):
  # 将alias别名解析成对应的地址并输出
  url1 = reverse('alias')
  print('alias的地址为:%s' % url1)
  # 将params别名以及参数解析成对应的地址并输出
  url2 = reverse('params',args=('2018',))
  print('params的地址为:%s' % url2)
  return HttpResponse("解析成功")


def add_views(request):
  #通过Entry.objects.cfrate()实现数据增加
  # try:
  #     author=Author.objects.create(name="wang",age=30,email="wang@tedu.com")
  #     print('ID'+author.id)
  #     print('Name'+author.name)
  #     print('Age'+str(author.age))
  # except Exception as e:
  #   print(e)
  #创建一个Entry对象，并通过save()进行保存
  # author = Author.objects.create(name="wei", age=33, email="wei@tedu.com")
  # author.save()
  # print(str(author.id))
  #使用字典创建对象，并通过save()进行保存
  dic = {
    'name':"lv",
    'age':28,
    'email':'lv@tedu.com'
  }
  author = Author(**dic)
  author.save()
  print("新元素ID"+str(author.id))

  return HttpResponse("OK")


def query_views(request):
  authors = Author.objects.all()
  print(authors)
  print(authors.query)
  return HttpResponse("OK")

