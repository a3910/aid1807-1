from django.db import models

# Create your models here.
#商品类别
class GoodsType(models.Model):
    title = models.CharField('名称',max_length=30)
    desc = models.CharField('描述',max_length=200,default='商品类型描述')
    flag = models.IntegerField('标记',default=0)
    picture = models.ImageField('图片',upload_to='static/images/goods_type/',default='normal.png')
    isDelete = models.BooleanField('逻辑删除',default=False)

    def __str__(self):
        return self.title

    class Meta(): #重定义表名
        db_table = 'goods_type'

#商品
class Goods(models.Model):
    title = models.CharField('名称',max_length=50)
    price = models.DecimalField('价格',max_digits=8,decimal_places=2)
    desc = models.CharField('描述',max_length=1000,default='商品的描述信息')
    picture = models.ImageField('图片',upload_to='static/images/goods/',default='normal.png')
    isDelete = models.BooleanField('逻辑删除',default=False)
    #维护一对多关系
    type = models.ForeignKey(GoodsType)

    def __str__(self):
        return self.title

    class Meta():
        db_table = 'goods'