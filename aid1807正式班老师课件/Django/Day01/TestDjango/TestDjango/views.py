#编写视图处理函数
#语法: def 函数名(request):
#语法:   pass
from django.http import HttpResponse


def show_views(request):
  return HttpResponse("我的第一个Django程序")

def show02_views(request,num1):
  return HttpResponse("传递进来的参数为:"+num1)

def show03_views(request,year,month,day):
  return HttpResponse("生日为:%s年%s月%s日" % (year,month,day))

def show04_views(request,name,age):
  return HttpResponse("姓名:"+name+"年龄:"+str(age))