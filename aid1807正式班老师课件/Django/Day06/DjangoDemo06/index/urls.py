from django.conf.urls import url
from .views import *
urlpatterns = [
  url(r'^01-request/$',request_views),
  url(r'^02-request/$',request02_views),
  url(r'^03-post/$',post_views),
  url(r'^04-all/$',all_views),
  url(r'^05-register/$',register_views),
  url(r'^06-form/$',form_views),
]