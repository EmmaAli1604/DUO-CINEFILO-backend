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
from pathlib import Path
import os
import environ

BASE_DIR = Path(__file__).resolve().parent.parent
env = environ.Env(
    # set casting, default value
    DEBUG=(bool, False) # Define el tipo de dato y valor por defecto
)

environ.Env.read_env(os.path.join(BASE_DIR, '.env'))

host = env('HOST')

urlpatterns = [
    path(host + 'admin/', admin.site.urls),
    path(host + 'users/', include('users.urls')),
    path(host + 'peliculas/', include('catalog.urls')),
    path(host + 'comentario/', include('reviews.urls')),
    path(host + 'chat/', include('chat.urls')),
    path(host + 'horarios/', include('events.urls')),
]
