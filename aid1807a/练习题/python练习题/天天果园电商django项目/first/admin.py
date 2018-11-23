from django.contrib import admin

# Register your models here.
from first.models import *

admin.site.register(GoodsType)
admin.site.register(Goods)