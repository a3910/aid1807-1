from django.contrib import admin
from .models import *
# 定义高级管理类并注册
class GoodsAdmin(admin.ModelAdmin):
  #1.定义显示在列表页上的字段们
  list_display = ('title','price','spec')
  #2.定义右侧过滤器
  list_filter = ('GoodType',)

    #３．增加搜索字段
  search_fields  = ("title",)

# Register your models here.

admin.site.register(GoodType)
admin.site.register(Goods,GoodsAdmin)
