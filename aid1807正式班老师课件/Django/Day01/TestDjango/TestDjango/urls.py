"""TestDjango URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from .views import *

urlpatterns = [
  url(r'^admin/', admin.site.urls),
  #访问地址:http://localhost:8000/01-show/,交给show_views的视图处理
  url(r'^01-show/$',show_views),

  #访问地址:/02-show/两位或两位以上的数字，交给show02_views去处理
  url(r'^02-show/(\d{2,})/$',show02_views),

  #访问地址:/03-show/四位数字/两位数字/两位数字,交给show03_views去处理
  url(r'^03-show/(\d{4})/(\d{2})/(\d{1,2})/$',show03_views),

  #访问地址:/04-show/,交给show04_views去处理
  url(r'^04-show/$',show04_views,{'name':'sasuke','age':18},name="show04"),

]
