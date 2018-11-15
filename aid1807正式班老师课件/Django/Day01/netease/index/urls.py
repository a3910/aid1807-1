from django.conf.urls import url
from .views import *
urlpatterns = [
    # http://localhost:8000/
    url(r'^$',index_views),
    # http://localhost:8000/login
    url(r'^login/$', login_views),
    # http://localhost:8000/register
    url(r'^register/$', register_views),

]