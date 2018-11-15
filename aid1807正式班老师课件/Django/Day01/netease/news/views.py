from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
def index_views(request):
  return HttpResponse("<h3 style='color:red;'>这是news应用中的index访问路径</h3>")
