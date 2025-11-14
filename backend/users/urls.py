from django.urls import path
from .views import login, register_user

urlpatterns = [
    path("login/", login, name="login"),
    path("register/", register_user, name="register_user"),
]