from django.conf.urls import url
from .views import *

urlpatterns = [
  #访问路径是http://localhost:8000/
  url(r'^$',index_views),
  #访问路径是http://localhost:8000/login
  url(r'^login/$',login_views,name='login'),
  #访问路径是http://localhost:8000/register
  url(r'^register/$',register_views,name='register'),
  #访问路径是http://localhost:8000/test
  url(r'^test/$',test_views),
  #访问路径是http://localhost:8000/checklogin
  url(r'^checklogin/$',checklogin_views),
  url(r'^logout/$',logout_views),
  url(r'^checkuphone/$',checkuphone_views),
  url(r'^type-goods/$',type_goods_views)
]