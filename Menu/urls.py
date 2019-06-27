from django.conf.urls import url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import include ,url
from django.urls import path

urlpatterns = [
    url(r'^', include('slider.urls')),
    #url(r'^alumni', include('alumni.urls')),
    #url(r'^ansec', include('Ansec.urls')),
    url(r'^admin/', admin.site.urls),
    path('Apply_Online/', include('admission_sys.urls')),
]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
