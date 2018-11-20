from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from index.forms import RemarkForm
from index.models import Author


def request_views(request):
  scheme = request.scheme
  body = request.body
  path = request.path
  full_path = request.get_full_path()
  host = request.get_host()
  method = request.method
  post = request.POST
  get = request.GET
  cookies = request.COOKIES
  meta = request.META
  return render(request,'01-request.html',locals())

def request02_views(request):
  year = request.GET.get('year','1900')
  month = request.GET.get('month','01')
  day = request.GET.get('day','01')
  print("传递的数据:%s年%s月%s日" % (year,month,day))
  return HttpResponse('Get OK')

def post_views(request):
  if request.method == 'GET':
    return render(request,'03-post.html')
  else:
    uname = request.POST.get('uname')
    upwd = request.POST.get('upwd')
    return HttpResponse("用户名:%s,用户密码:%s" % (uname,upwd))

def all_views(request):
  authors = Author.objects.all()
  for au in authors:
    print(au.id,au.name,au.age,au.email)
  return HttpResponse("Query OK")

def register_views(request):
  if request.method == 'GET':
    return render(request,'05-register.html')
  else:
    #接收前端传递过来的数据
    name = request.POST.get('name')
    age = request.POST.get('age')
    email = request.POST.get('email')
    #将数据封装成 author 的对象
    au = Author()
    au.name = name
    au.age = age
    au.email = email
    #调用author的save()将数据保存进数据库
    au.save()
    return HttpResponse("Register OK")

def form_views(request):
  if request.method == 'GET':
    #创建RemarkForm的对象,并发送到06-form.html中
    form = RemarkForm()
    return render(request,'06-form.html',locals())
  else:
    subject = request.POST.get('subject')
    email = request.POST.get('email')
    message = request.POST.get('message')
    topic = request.POST.get('topic')
    isSaved = request.POST.get('isSaved','0')
    return HttpResponse("Subject:%s,Email:%s,Message:%s,Topic:%s,IsSaved:%s" % (subject,email,message,topic,isSaved))