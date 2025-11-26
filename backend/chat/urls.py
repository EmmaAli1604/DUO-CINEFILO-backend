from django.urls import path
from . import views

urlpatterns = [
    path('msj/', views.chatbot_view, name='chatbot_index'),
]