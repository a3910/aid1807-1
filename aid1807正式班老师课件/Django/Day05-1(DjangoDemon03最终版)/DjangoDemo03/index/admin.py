from django.contrib import admin
from .models import *
#定义高级管理
class AuthorAdmin(admin.ModelAdmin):

    #定义显示在列表页的字段
    list_display = ('name','age','email')
    # 定义在列表页中也能够连接到详情页的字段们
    list_display_links =('email','name',)
    #定义在列表页中就允许修改的字段们
    list_editable =('age',)
    # 添加允许被搜索的字段们
    search_fields = ('name','email',)
    # 添加允许被搜索的字段们
    list_filter = ('name',)
    #fields = ("name",)
    fieldsets = (
        ("基本信息",{
        'fields':("name","age"),
        "classes":("collapse",),

        }),
        ("附加信息", {
            'fields': ("email", "isActive",'publishers'),
            "classes": ("collapse",),

        })
    )

class BookAdmin(admin.ModelAdmin):
    date_hierarchy = ("publicate_date")

class PublisherAdmin(admin.ModelAdmin):
    # 定义显示在列表页的字段
    list_display = ('name', 'address', 'city',)
    #列表中address,city可编辑
    list_editable = ('city','address',)
    #右侧增加过滤器，允许按照city筛选
    list_filter = ('city',)
    # 添加允许被搜索的字段们
    search_fields = ('name', 'address',)
    #详细页分组显示
    fieldsets = (
        (
            "基本选项",{
                'fields':("name","address","city"),
            }
        ),
        (
            "高级选项",{
                'fields':("country","website"),
                'classes':("collapse",),
            }
        )
    )

# Register your models here.
admin.site.register(Book,BookAdmin)
admin.site.register(Author,AuthorAdmin)
admin.site.register(Publisher,PublisherAdmin)
admin.site.register(Wife)
admin.site.register(Person)
