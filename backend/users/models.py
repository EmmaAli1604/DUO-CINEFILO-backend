from django.db import models
from django.conf import settings


class UserToken(models.Model):
    """
    Guarda un token tipo 'Bearer' asociado a un usuario.
        user (User): Usuario de Django al que pertenece el token.
        token (str): Cadena �nica que representa el token de autenticaci�n.
        created_at (datetime): Fecha y hora en que se cre� el token.
        is_active (bool): Indica si el token sigue activo o fue invalidado.
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

class Usuario(models.Model):
    id_usuario = models.CharField(db_column='idusuario', primary_key=True, max_length=15)
    password = models.CharField(db_column='password', max_length=255)
    nombre = models.CharField(db_column='nombre', max_length=50, blank=True, null=True)
    apellido_paterno = models.CharField(db_column='apellidopaterno', max_length=50, blank=True, null=True)
    apellido_materno = models.CharField(db_column='apellidomaterno', max_length=50, blank=True, null=True)
    fecha_nacimiento = models.DateField(db_column='fechanacimiento', blank=True, null=True)
    genero = models.CharField(db_column='genero', max_length=1, blank=True, null=True)
    token = models.CharField(db_column='token', max_length=255, blank=True, null=True)

    class Meta:
        db_table = 'usuario'
        managed = False

    def __str__(self):
        return f"{self.nombre} {self.apellido_paterno}"