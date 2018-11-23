from django.db import models
#自定义ＡuthorManager类型，继承自models.Manager
#并自定义方法
class AuthorManager(models.Manager):
    def isactive_count(self):
        #查询isactive=True的数量
        return self.filter(isActive=True).count()

    def age_lt(self,age):
        return self.filter(age__lt=age)

class BookManager(models.Manager):
    def title_count(self,kw):
        # 查询isactive=True的数量
        return self.filter(title__contains=kw).count()

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
  def __repr__(self):
        return "Publisher:%r" % self.name

  def __str__(self):
        return self.name

  class Meta:
    db_table = 'publisher'
    verbose_name = '出版社'
    verbose_name_plural = verbose_name
    ordering=['city']

#创建Author实体类
class Author(models.Model):
    #通过AuthorManager来覆盖掉默认的objects
    objects=AuthorManager()
    name = models.CharField(max_length=30)
    age = models.IntegerField()
    email = models.EmailField(null=True)
    #增加一个字段，isActive用于表示用户的激活状态
    #类型为BooleanField(),
    # True表示用户已激活,False表示用户未激活
    isActive = models.BooleanField(default=True)
    # 增加对Publisher(多)的引用
    publishers = models.ManyToManyField(Publisher)
    def __repr__(self):
      return "Author:%r"%self.name
    def __str__(self):
      return self.name
    class Meta:
      db_table = 'author'
      verbose_name = '书生'
      verbose_name_plural = verbose_name
      ordering=['age']

#创建Book实体类
class Book(models.Model):
    #通过BookManager来覆盖掉默认的objects
    objects=BookManager()
    title = models.CharField(max_length=50)
    publicate_date = models.DateField()
    #增加对Publisher(一)的引用
    publisher = models.ForeignKey(Publisher,null=True)
    #增加对Author(多)的引用
    authors = models.ManyToManyField(Author)
    def __repr__(self):
      return "Book:%r"%self.title
    def __str__(self):
      return self.title
    class Meta:
      db_table = 'book'
      verbose_name = '小黄书'
      verbose_name_plural = verbose_name
      ordering=['-publicate_date']


#创建Wife实体类
class Wife(models.Model):
    name = models.CharField(max_length=30)
    age = models.IntegerField()
    #增加映射关系(1对1)
    author = models.OneToOneField(Author,null=True)
    def __repr__(self):
      return "Wife:%r"%self.name
    def __str__(self):
      return self.name

    class Meta:
      db_table = "wife"
      verbose_name="娘子"
      verbose_name_plural=verbose_name
      ordering=['age']

class Person(models.Model):
    SHIRT_SIZES = (
        ('S', 'Small'),
        ('M', 'Medium'),
        ('L', 'Large'),
    )
    name = models.CharField(max_length=60)
    shirt_size = models.CharField(max_length=1, choices=SHIRT_SIZES)

    def __repr__(self):
      return "Person:%r"%self.name
    def __str__(self):
      return self.name
    class Meta:
      db_table = 'person'
      verbose_name = '人性'
      verbose_name_plural = verbose_name



