from django.conf.urls import url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic.base import TemplateView
from . import views

app_name ='Ansec'
urlpatterns = [
url(r'^$', views.IndexView.as_view(), name='ansec'),
]