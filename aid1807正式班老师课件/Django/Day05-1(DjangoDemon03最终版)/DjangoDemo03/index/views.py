from django.db.models import Sum, Avg,F,Q
from django.db import connection
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from .models import *


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
  #通过Entry.objects.create()实现数据的增加
  try:
    author = Author.objects.create(name="王老师",age=35,email="laowang@163.com")
    print('ID:'+str(author.id))
    print('Name:'+author.name)
    print('Age:'+str(author.age))
  except Exception as e:
    print(e)

  # #通过Entry对象的save()方法完成增加
  # author = Author(name='魏老师',age=35,email='laowei@163.com')
  # author.save()
  # print("新元素的ID为:"+str(author.id))

  #通过字典构建Entry对象并通过save()完成增加
  dic = {
    'name':'吕老师',
    'age':26,
    'email':'zhao@tedu.com',
  }

  author = Author(**dic)
  author.save()
  print("新元素的ID为:" + str(author.id))

  return HttpResponse("Add Mr Lv OK")

def query_views(request):
  # 通过all()查询所有的数据
  # authors = Author.objects.all()
  # print(authors.query) #输出查询的语句
  # for author in authors:
  #   print('*************')
  #   print('ID:%d' % author.id)
  #   print('姓名:%s' % author.name)
  #   print('年龄:%d' % author.age)
  #   print('邮箱:%s' % author.email)

  #通过values() 查询部分列的数据
  # authors = Author.objects.values()
  # authors = Author.objects.values('name','email')
  # print(authors)
  # for author in authors:
  #   print('************')
  #   print("姓名:%s" % author['name'])

  #通过values_list()查询部分列的数据
  # authors = Author.objects.all().values_list('name','email')
  # print(authors)

  #通过 order_by()实现排序查询:先按照age降序排序，再按照id升序排序
  # authors=Author.objects.order_by('-age','id')
  # for author in authors:
  #   print('***********************')
  #   print('ID:%d' % author.id)
  #   print('姓名:%s' % author.name)
  #   print('年龄:%d' % author.age)

  #通过get()查询一条数据
  # author=Author.objects.get(age=35)
  # print(author.name)

  #通过filter()按条件筛选数据
  #1.查询id=1的Author的信息
  # authors=Author.objects.filter(id=1)
  #2.查询id=35的Author的信息
  # authors=Author.objects.filter(id=35)
  #3.查询id=1并且name='王老师'的Author的信息
  # authors=Author.objects.filter(id=1,name='王老师')
  #4.查询age大于等于30的Author的信息
  # authors = Author.objects.filter(age__gte=30)
  # for au in authors:
  #   print(au.name)

  #通过exclude()实现条件的取反
  # authors = Author.objects.exclude(id=1,age=35)
  # print(authors.query)
  # print(authors)

  #通过aggregate()实现聚合查询(不带分组)
  # result=Author.objects.aggregate(sumAge=Sum('age'),avgAge=Avg('age'))
  # print(result)

  #通过annotate()实现分组聚合函数查询
  # result = Author.objects.values('id').annotate(avgAge=Avg('age'))
  # print(result.query)
  # print(result)

  result=Author.objects.filter(id__gte=3).values('isActive').annotate(avgAge=Avg('age')).filter(avgAge__gte=30)
  print(result.query)
  print(result)
  return HttpResponse('Query OK')

def update_views(request):
  # 将MrWang更改为RapWang
  author=Author.objects.get(name='王老师')
  author.name = "MrWang"
  author.save()

  # 将Author中所有的数据的isActive属性值修改为True
  Author.objects.all().update(isActive=True)
  return HttpResponse("Update OK")

def queryall_views(request):
  #查询Author实体中所有的数据
  authors = Author.objects.all()
  return render(request,'09-queryall.html',locals())

def delete_views(request,id):
  # id 表示的是要删除的用户的id值
  au = Author.objects.get(id=id)
  au.delete()
  #使用redirect()完成重定向
  return redirect('/09-queryall')

def update01_views(request):
  authors=Author.objects.all().update(age=F('age') - 10)
  # authors=Author.objects.filter(Q(id=10)|Q(age=42))
  print(authors)
  return HttpResponse("OK")

def raw_views(request):
  authors=Author.objects.raw("select * from author")
  for name in authors:
    print(name.name)
  return HttpResponse("OK")

def doSQL(request):
  with connection.cursor() as cursor:
    sql = "delete from author where name = '吕老师'"
    cursor.execute(sql)
    return HttpResponse("OK")

def check_views(request):

  # wife = Wife.objects.get(name="涟漪")
  # author = wife.author
  # print("娘子是%s,年龄%d"%(wife.name,wife.age))
  # print("书生是%s,年龄%d"%(author.name,author.age))
  #
  # author = Author.objects.get(name="哲学吕")
  # wife = author.wife
  # print("娘子是%s,年龄%d"%(wife.name,wife.age))
  # print("书生是%s,年龄%d"%(author.name,author.age))
  #
  # book = Book.objects.get(title="明王")
  # publisher = book.publisher
  # print("书名是%s,日期%s"%(book.title,book.publicate_date))
  # print("出版社是%s,网址%s"%(publisher.name,publisher.website))
  #
  # publisher = Publisher.objects.get(name = "人民教育出版社")
  # book=publisher.book_set.all()
  # print("出版社是%s,网址%s"%(publisher.name,publisher.website))
  # for book in book:
  #   print("书名是%s,日期%s"%(book.title,book.publicate_date))
  #通过book查询author
  # book = Book.objects.get(id=1)
  # print("书名是%s"%(book.title))
  # authors=book.authors.all()
  # print("编写的作者有：")
  # for author in authors:
  #   print("姓名是%s"%(author.name))

  authors = Author.objects.get(name="MrWang")
  print("作者是%s"%authors.name)
  books = authors.book_set.all()
  print("编写的书籍有：")
  for book in books:
    print("姓名是%s"%(book.title))


  return HttpResponse("OK")

def objects_views(request):
  count=Author.objects.isactive_count()
  print(count)
  lt1 = Author.objects.age_lt(28)
  for lt in lt1:
    print(lt.name)
  count2=Book.objects.title_count("余罪")
  print(count2)
  # return HttpResponse("数量为%d,%s,%d"%(count,lt1,count2))
  return HttpResponse("OK")