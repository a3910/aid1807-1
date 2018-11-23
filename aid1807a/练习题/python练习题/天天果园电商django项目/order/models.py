from django.db import models

# Create your models here.
from first.models import Goods
from user.models import UserInfo


class CartInfo(models.Model):
    cuser = models.ForeignKey(UserInfo,db_column='user_id')
    cgoods = models.ForeignKey(Goods,db_column='goods_id')
    ccount = models.IntegerField(default=0,db_column='count')


#订单和订单明细
class OrderInfo(models.Model):
    user = models.ForeignKey(UserInfo)
    order_date = models.DateTimeField(auto_now=True)
    order_address = models.CharField(max_length=200,null=True)
    total = models.DecimalField(max_digits=8,decimal_places=2)
    is_pay = models.BooleanField(default=False)

class OrderLine(models.Model):
    goods = models.ForeignKey(Goods)
    order = models.ForeignKey(OrderInfo)
    count = models.IntegerField()
    price = models.DecimalField(max_digits=8,decimal_places=2)