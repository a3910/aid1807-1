from django.conf.urls import url
from .views import *
urlpatterns = [
    # http://localhost:8000/news/
    url(r'^$',index_views),

]