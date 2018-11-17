from django.db.models import Avg, Sum,Count,Max,Min
from django.http import HttpResponse
from django.shortcuts import render, redirect
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
  #通过Entry.objects.create()实现数据增加
  # try:
  #     author=Author.objects.create(name="wang",age=30,email="wang@tedu.com")
  #     print('ID'+author.id)
  #     print('Name'+author.name)
  #     print('Age'+str(author.age))
  # except Exception as e:
  #   print(e)
  #创建一个Entry对象，并通过save()进行保存
  author = Author.objects.create(name="zhao", age=25, email="zhao@tedu.com")
  author.save()
  print(str(author.id))
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
  # authors = Author.objects.all()
  # print(authors)
  # print(authors.query)
  # for author in authors:
  #   print("******************")
  #   print(author.id)
  #   print(author.name)
  #   print(author.age)
  #   print(author.email)

  # authors = Author.objects.values('name','email')
  # print(authors)
  # for author in authors:
  #   print("******************")
  #   print("姓名%s"%author['name'])
  #   print("邮箱%s"%author['email'])
  #   print("******************")

  # authors = Author.objects.values_list('name','email')
  # for author in authors:
  #    print(authors)
#通过order_by()实现排序查询，先按照age降序排，再按id 升序排
  # authors = Author.objects.order_by('-age','id')
  # print(authors)
  # for author in authors:
  #   print("******************")
  #   print(author.id)
  #   print(author.name)
  #   print(author.age)
  #   print(author.email)
  # authors = Author.objects.get(id=10)
  # print(authors.name)
  #通过filter()按条件筛选数据
  # authors = Author.objects.filter(name='wang')
  # print(authors)
  #查询不存在的信息
  # authors= Author.objects.filter(id=1000)
  # print(authors)
  # authors= Author.objects.filter(age__gte=10)
  # for au in authors:
  #   print("姓名是:"+au.name)

  # authors= Author.objects.filter(name__startswith='lv')
  # for au in authors:
  #   print("姓名是:"+au.name)
  # authors = Author.objects.filter(name__contains='wang')
  # for au in authors:
  #   print(au.name,au.age)
  # books = Book.objects.filter(publicate_date__year=2015)
  # for book in books:
  #   print(book.title,book.publicate_date)
  # books =   Book.objects.filter(publicate_date__year__gte=2015)
  # for book in books:
  #   print(book.title,book.publicate_date)
  # #通过exclude()实现条件的取反
  # authors = Author.objects.exclude(name='lv' ,age__lt=30)
  # print(authors.query)
  # print(authors)
  # result=Author.objects.all().aggregate(avg=Avg('age'))
  # print(result)
  # result=Author.objects.all().aggregate(sum=Sum('age'))
  # print(result)
  # result=Author.objects.all().aggregate(min=Min('age'))
  # print(result)
  # result=Author.objects.all().aggregate(max=Max('age'))
  # print(result)
  # result=Author.objects.all().aggregate(count=Count('name'))
  # print(result)
  result = Author.objects.values('isActive').annotate(avg=Avg('age')).filter(avg__gte=28)
  print(result.query)
  print(result)
  return HttpResponse("OK")

def add01_views(request):
  # dic = {
  #   'title': "红楼梦",
  #   'publicate_date': '2015-08-08',
  # }
  # dic = {
  #   'title': "西游记",
  #   'publicate_date': '2016-08-08',
  # }
  # dic = {
  #   'title': "三国演义",
  #   'publicate_date': '2014-08-08',
  # }
  dic = {
    'title': "水浒传",
    'publicate_date': '2013-08-08',
  }
  book = Book(**dic)
  book.save()


  print("新元素ID" + str(book.id))

  return HttpResponse("OK")

def update_views(request):
    #将lv更改为lvze
    # author = Author.objects.get(id=10)
    # author.name = "lv"
    # author.save()
    author = Author.objects.filter(name='wang').update(name='wangwc')
    print(author)
    return HttpResponse("OK")
def queryall_views(request):
    authors = Author.objects.all()
    return render(request,'09-queryall.html',locals())

def delete_views(request,id):
    # id 表示的是要删除的用户id值
    author = Author.objects.get(id=id)
    author.delete()
    #使用redirect()完成重定向
    return redirect('/09-queryall')

def add02_views(request):
  dic = {
    'name': " 人民教育出版社",
    'address': '北京市海淀区中关村南大街17号院1号楼',
    'city': "广州",
    'country': "中国",
    'website': "http://www.pep.com.cn/",
  }
  publisher = Publisher(**dic)
  publisher.save()


  print("新元素ID" + str(publisher.id))

  return HttpResponse("OK")




