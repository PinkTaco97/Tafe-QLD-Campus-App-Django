from django.contrib import admin
from django.urls import path, include

urlpatterns = [

    # Admin URLS
    path('admin/', admin.site.urls),

    # Tafe URLS
    path('', include('tafe.urls')),

    # Points URLS
    path('points/', include('poi.urls')),
]