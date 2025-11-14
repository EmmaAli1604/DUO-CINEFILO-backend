from django.db import models
from django.conf import settings

class UserToken(models.Model):
    """
    Guarda un token tipo 'Bearer' asociado a un usuario.
    """
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
        related_name="tokens",
    )
    token = models.CharField(max_length=255, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    is_active = models.BooleanField(default=True)

    def __str__(self) -> str:
        return f"Token for {self.user} ({'active' if self.is_active else 'inactive'})"