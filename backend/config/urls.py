"""
Archivo de configuración principal de rutas del proyecto Django.

Define los endpoints de nivel superior y enlaza los módulos correspondientes:
- ``/admin/``: Panel administrativo de Django.
- ``/api/users/``: Endpoints del módulo de usuarios (login, logout, registro).
- ``/api/peliculas/``: Endpoint del catálogo de películas.

Este archivo funciona como el enrutador central del backend.
"""
from django.contrib import admin
from django.urls import path, include
from catalog.views import list_movies  # <-- importa la vista

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/users/', include('users.urls')),
    path('api/peliculas/', list_movies, name='list_movies'),  # <-- nueva ruta
]
