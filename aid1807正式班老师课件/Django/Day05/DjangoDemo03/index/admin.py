from django.contrib import admin
from .models import *

# 定义高级管理类并注册
class AuthorAdmin(admin.ModelAdmin):
  #1.定义显示在列表页上的字段们
  list_display = ('name','age','email')
  #2.定义允许链接到详情页的字段们
  list_display_links = ('email','name')
  #3.定义在列表页中就允许修改的字段们
  list_editable = ('age',)
  #4.定义搜索字段
  search_fields = ('name','email')
  #5.定义右侧过滤器
  list_filter = ('name','age')
  #7.指定在详情页上显示的字段以及顺序
  # fields = ('name','email','age')
  #8.指定字段们再详情页上的分组
  # fieldsets = (
  #   #分组1
  #   ('基本信息',{
  #     'fields':('name','age'),
  #   }),
  #   #分组2
  #   (
  #     '详细信息',{
  #       'fields':('email','isActive'),
  #       'classes':('collapse',),
  #     }
  #   )
  # )

class BookAdmin(admin.ModelAdmin):
  # 指定在列表页中显示的字段们
  list_display = ('title','publicate_date')
  #6.增加时间选择器
  date_hierarchy = 'publicate_date'

class PublisherAdmin(admin.ModelAdmin):
  # 1.指定列表页中显示name,address,city字段
  list_display = ('name','address','city')
  # 2.列表页中address,city是可编辑的
  list_editable = ('address','city')
  # 3.右侧增加过滤器,允许按照city进行筛选
  list_filter = ('city',)
  # 4.顶部增加搜索框，允许按照Name和website进行搜索
  search_fields = ('name','website')
  # 5.详情页中分组显示
  fieldsets = (
    (
      '基本选项',{
        'fields':('name','address','city'),
      }
    ),
    (
      '高级选项',{
        'fields':('country','website'),
        'classes':('collapse',),
      }
    )
  )


# Register your models here.
admin.site.register(Author,AuthorAdmin)
admin.site.register(Book,BookAdmin)
admin.site.register(Publisher,PublisherAdmin)
admin.site.register(Wife)
