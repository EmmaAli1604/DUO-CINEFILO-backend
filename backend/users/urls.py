"""Rutas del módulo de usuarios.

En este archivo se definen las URL específicas para las operaciones
relacionadas con usuarios: inicio de sesión, registro y cierre de sesión.
"""
from django.urls import path
from .views import login, register_user, logout

urlpatterns = [
    path("login/", login, name="login"),
    path("register/", register_user, name="register_user"),
    path("logout/", logout, name="logout")
]