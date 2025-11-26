from django.contrib import admin
from .models import Pelicula


# Opción Básica:
# admin.site.register(Pelicula)

# Opción "Pro" (Para ver columnas y filtros):
@admin.register(Pelicula)
class PeliculaAdmin(admin.ModelAdmin):
    # Qué columnas ver en la lista
    list_display = ('id', 'nombre', 'productora', 'año', 'director', 'calificacion')

    # Barra de búsqueda
    search_fields = ('idpelicula', 'nombre', 'director')

    # Filtros laterales
    list_filter = ('año', 'productora')

    # Orden por defecto
    ordering = ('-id',)
