from django.urls import path
from . import views

urlpatterns = [
    path("all/", views.lista_peliculas, name="lista_peliculas"),
    path("tag/", views.peliculas_por_etiqueta, name="tag_peliculas"),
    path("find/", views.buscar_pelicula_json, name="peliculas_find"),
]