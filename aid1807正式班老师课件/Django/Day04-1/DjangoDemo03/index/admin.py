from django.contrib import admin
from .models import *
#定义高级管理
class AuthorAdmin(admin.ModelAdmin):
    #定义显示在列表页的字段
    list_display = ('name','age','email',)
    # 定义在列表页中也能够连接到详情页的字段们
    list_display_links =('email','name',)
    #定义在列表页中就允许修改的字段们
    list_editable =('age',)
    # 添加允许被搜索的字段们
    search_fields = ('name',)
# Register your models here.
admin.site.register(Book)
admin.site.register(Author,AuthorAdmin)
admin.site.register(Publisher)
