
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('cineduo.lat/api/admin/', admin.site.urls),
    path('cineduo.lat/api/users/', include('users.urls')),
    path('cineduo.lat/api/peliculas/', include('catalog.urls')),
    path('cineduo.lat/api/comentario/', include('reviews.urls')),
    path('cineduo.lat/api/chat/', include('chat.urls')),
    path('cineduo.lat/api/horarios/', include('events.urls')),
]
