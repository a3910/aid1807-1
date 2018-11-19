from django.db import models

# Create your models here.
#编写ＧoodType实体类
class GoodType(models.Model):
    title = models.CharField(max_length=50,verbose_name="类型名称")
    desc = models.TextField(verbose_name='类型描述')
    picture = models.ImageField(upload_to='static/upload/goodstype',null=True,verbose_name="类型图片")

    def __str__(self):
        return self.title
    class Meta:
        db_table='good_type'
        verbose_name='商品类型'
        verbose_name_plural=verbose_name


class Goods(models.Model):
    title = models.CharField(max_length=50,verbose_name="商品类型")
    price = models.DecimalField(max_digits=7,decimal_places=2,verbose_name="商品价格")
    spec=models.CharField(max_length=20,verbose_name="商品规格")
    picture=models.ImageField(upload_to='static/upload/goods',verbose_name="商品图片")
    #与商品类型之间的1:M
    GoodType =models.ForeignKey(GoodType,verbose_name="商品类型")
    isActive = models.BooleanField(default=True,verbose_name='布尔')
    def __repr__(self):
        return self.title

    def __str__(self):
        return self.title
    class Meta:
        db_table='goods'
        verbose_name = "商品"
        verbose_name_plural=verbose_name


