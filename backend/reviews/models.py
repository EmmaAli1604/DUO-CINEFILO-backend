from django.db import models
from users.models import Usuario
from catalog.models import Pelicula


class Comentario(models.Model):
    # Generaremos este ID manualmente en la vista
    id_comentario = models.BigIntegerField(db_column='idcomentario', primary_key=True)

    # Relaciones (Foreign Keys)
    # Django sabrá conectar con las otras tablas gracias a estos campos
    usuario = models.ForeignKey(Usuario, models.DO_NOTHING, db_column='idusuario')
    pelicula = models.ForeignKey(Pelicula, models.DO_NOTHING, db_column='idpelicula')

    calificacion = models.BigIntegerField(db_column='calificacion')  # ¡Obligatorio por tu SQL!
    texto = models.CharField(db_column='texto', max_length=500, blank=True, null=True)
    fecha = models.DateTimeField(db_column='fecha', blank=True, null=True)
    class Meta:
        db_table = 'comentario'
        managed = False

# Create your models here.
