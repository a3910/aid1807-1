from django.conf.urls import url
from .views import *

urlpatterns = [
  url(r'^01-parent/$',parent_views),
  url(r'^02-child/$',child_views),
  url(r'^03-test-alias/$',alias_views,name='alias'),
  url(r'^04-test-alias-params/(\d{4})/$',alias_params_views,name='params'),
  url(r'^05-reverse/$',reverse_views),
]

urlpatterns += [
  url(r'^06-add/$',add_views),
  url(r'^07-query/$',query_views),
  url(r'^08-update/$',update_views),
  url(r'^09-queryall/$',queryall_views),
  url(r'^10-delete/(\d+)/$',delete_views),
]

urlpatterns += [
  url(r'^11-homework/$',homework_views),
  url(r'^12-doF/$',f_views),
  url(r'^13-oto/$',oto_views),
  url(r'^14-otm/$',otm_views),
]
