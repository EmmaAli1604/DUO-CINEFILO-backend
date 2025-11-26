from django.urls import path
from . import views

urlpatterns = [
    path('pelis/', views.consultar_horarios_pelicula, name='consultar_horarios'),
    path('cinetecas/',views.consultar_horarios_cineteca, name='consultar_horarios_cineteca'),
]