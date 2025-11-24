from django.urls import path
from . import views

urlpatterns = [
    path("make/", views.crear_comentario, name="comment"),
    path("get/",views.listar_comentarios_json, name="comentarios"),
    path("likes/",views.incrementar_calificacion, name="calificar"),
]