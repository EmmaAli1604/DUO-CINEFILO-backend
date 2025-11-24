"""
Archivo de configuraci�n principal de rutas del proyecto Django.

Define los endpoints de nivel superior y enlaza los m�dulos correspondientes:
- ``/admin/``: Panel administrativo de Django.
- ``/api/users/``: Endpoints del m�dulo de usuarios (login, logout, registro).
- ``/api/peliculas/``: Endpoint del cat�logo de pel�culas.

Este archivo funciona como el enrutador central del backend.
"""
from django.contrib import admin
from django.urls import path, include
from catalog.views import list_movies  # <-- importa la vista

urlpatterns = [
    path('admin/', admin.site.urls),
    path('users/', include('users.urls')),
    path('peliculas/', include('catalog.urls')),
    path('comentario/', include('reviews.urls')),
]
