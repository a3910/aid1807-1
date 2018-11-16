from django.db import models

# Create your models here.
#创建一个实体类-Publisher(出版社)
#1.name : 出版社名称(varchar(30))
#2.address : 出版社所在地址(varchar(200))
#3.city : 出版社所在城市(varchar(50))
#4.country : 出版社所在国家(varchar(50))
#5.website : 出版社的网址(varchar(200))
class Publisher(models.Model):
  name = models.CharField(max_length=30)
  address = models.CharField(max_length=200)
  city = models.CharField(max_length=50)
  country = models.CharField(max_length=50)
  website = models.URLField()

  def __str__(self):
    return self.name

  class Meta:
    db_table = 'publisher'
    verbose_name = '出版社'
    verbose_name_plural = verbose_name

#创建Author实体类
class Author(models.Model):
  name = models.CharField(max_length=30,verbose_name='姓名')
  age = models.IntegerField(verbose_name='年龄')
  email = models.EmailField(null=True,verbose_name='邮箱')
  #增加一个字段，isActive用于表示用户的激活状态
  #类型为BooleanField(),
  # True表示用户已激活,False表示用户未激活
  isActive = models.BooleanField(default=True,verbose_name='激活')

  def __repr__(self):
    return "<Author:%r>" % self.name

  def __str__(self):
    return self.name

  class Meta:
    #1.指定映射到的表的名称
    db_table = 'author'
    #2.定义在后台的显示名称(单数)
    verbose_name = '作者'
    #3.定义在后台的显示名称(复数)
    verbose_name_plural = verbose_name
    #4.定义数据在后台的排序方式
    ordering = ['-age','id']


#创建Book实体类
class Book(models.Model):
  title = models.CharField(max_length=50)
  publicate_date = models.DateField()
  # 增加对Publisher(一)的引用
  publisher = models.ForeignKey(Publisher,null=True)


#创建Wife实体类
class Wife(models.Model):
  name = models.CharField(max_length=30)
  age = models.IntegerField()
  #增加对Author的引用(一对一)
  author = models.OneToOneField(Author,null=True)

  def __str__(self):
    return self.name

  class Meta:
    db_table = 'wife'
    verbose_name = '娘子'
    verbose_name_plural = verbose_name





