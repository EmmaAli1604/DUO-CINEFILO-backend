from django.db import models
# Importamos el modelo de la otra app para la FK
from catalog.models import Pelicula


class Cineteca(models.Model):
    id_cineteca = models.BigIntegerField(db_column='idcineteca', primary_key=True)
    nombre = models.CharField(db_column='nombre', max_length=50)
    direccion = models.CharField(db_column='direccion', max_length=50, blank=True, null=True)

    class Meta:
        db_table = 'cineteca'
        managed = False  # La tabla ya existe en DB

    def __str__(self):
        return self.nombre


class Horario(models.Model):
    id_horario = models.BigIntegerField(db_column='idhorario', primary_key=True)

    # RELACIONES:
    # 1. Con Pelicula (de la app 'peliculas')
    pelicula = models.ForeignKey(Pelicula, models.DO_NOTHING, db_column='idpelicula')

    # 2. Con Cineteca (de esta misma app)
    cineteca = models.ForeignKey(Cineteca, models.DO_NOTHING, db_column='idcineteca')

    horario = models.DateTimeField(db_column='horario')

    class Meta:
        db_table = 'horario'
        managed = False
# Create your models here.
