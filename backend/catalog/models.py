from django.db import models

class Pelicula(models.Model):
    # Mapeamos los campos
    id = models.BigIntegerField(db_column='idpelicula', primary_key=True)
    nombre = models.CharField(db_column='nombre', max_length=255)
    director = models.CharField(db_column='director', max_length=50, blank=True, null=True)
    productora = models.CharField(db_column='productora', max_length=100, blank=True, null=True)


    año = models.SmallIntegerField(db_column='año', blank=True, null=True)

    calificacion = models.FloatField(db_column='calificacion', blank=True, null=True)
    poster = models.CharField(db_column='poster', max_length=50, blank=True, null=True)
    trailer = models.CharField(db_column='trailer', max_length=50, blank=True, null=True)
    sinopsis = models.TextField(db_column='sinopsis', blank=True, null=True)

    class Meta:
        db_table = 'pelicula'
        managed = False

class Etiqueta(models.Model):
    # Mapeo exacto a tu tabla SQL
    id_etiqueta = models.BigIntegerField(db_column='idetiqueta', primary_key=True)
    nombre = models.CharField(db_column='nombre', max_length=50)

    class Meta:
        db_table = 'etiqueta' # Nombre real en Postgres
        managed = False       # Django no toca la estructura

    def __str__(self):
        return self.nombre