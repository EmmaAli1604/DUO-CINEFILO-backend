import json
from django.db import connection
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Pelicula
from .models import Etiqueta
from users.models import Usuario

def lista_peliculas(request):
    peliculas_queryset = Pelicula.objects.all().values(
        'id', 'nombre', 'director', 'productora', 'año',
        'calificacion', 'poster', 'trailer','sinopsis'
    )

    lista_peliculas = list(peliculas_queryset)
    return JsonResponse(lista_peliculas, safe=False)


@csrf_exempt
def peliculas_por_etiqueta(request):
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido'}, status=405)


    try:
        data = json.loads(request.body)
        id_etiqueta = data.get('idetiqueta')

        if id_etiqueta is None:
            return JsonResponse({'error': 'Falta el campo id_etiqueta en el JSON'}, status=400)
    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

        # ---------------------------------------------------------
        # 3. CONSULTA: JOIN manual usando SQL directo
        # ---------------------------------------------------------
        # Hacemos esto porque configurar ManyToMany con tablas legacy en Django es complejo.
        # El SQL es más directo y eficiente aquí.

    query = """
            SELECT p."idpelicula", p."nombre", p."director", p."año", p."poster",p."sinopsis"
            FROM Pelicula p
            INNER JOIN PeliculaEtiqueta pe ON p."idpelicula" = pe."idpelicula"
            WHERE pe."idetiqueta" = %s
        """

    # Nota sobre las comillas: Depende de cómo creaste tu tabla.
    # Si Postgres las hizo minúsculas, quita las comillas dobles en el SQL de arriba.

    lista_resultado = []

    with connection.cursor() as cursor:
        cursor.execute(query, [id_etiqueta])
        rows = cursor.fetchall()

        # Mapeamos los resultados (tuplas) a diccionarios
        for row in rows:
            peli = {
                'id': row[0],
                'nombre': row[1],
                'director': row[2],
                'año': row[3],
                'poster': row[4],
                'sinopsis': row [5],
                # Puedes agregar más campos si los pones en el SELECT
            }
            lista_resultado.append(peli)

    return JsonResponse({
        'etiqueta_solicitada': id_etiqueta,
        'cantidad': len(lista_resultado),
        'peliculas': lista_resultado
    }, safe=False)


@csrf_exempt
def buscar_pelicula_json(request):

    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido. Usa POST y envía un JSON.'}, status=405)


    auth_header = request.headers.get('Authorization')
    if not auth_header or not auth_header.startswith('Bearer '):
        return JsonResponse({'error': 'Falta el header Authorization con Bearer token'}, status=401)

    token_recibido = auth_header.split(' ')[1]


    if not Usuario.objects.filter(token=token_recibido).exists():
        return JsonResponse({'error': 'Token inválido o expirado'}, status=401)


    try:
        data = json.loads(request.body)
        nombre_busqueda = data.get('nombre')  # Buscamos la clave "nombre"

        if not nombre_busqueda:
            return JsonResponse({'error': 'El JSON debe contener el campo "nombre"'}, status=400)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

    # 4. BÚSQUEDA EN BASE DE DATOS
    # Usamos __icontains para buscar coincidencias (insensitive case)
    # Si quieres coincidencia EXACTA, cambia __icontains por el signo igual (=)
    qs = Pelicula.objects.filter(nombre__icontains=nombre_busqueda).values(
        'id', 'nombre', 'director', 'productora', 'año',
        'calificacion', 'poster', 'trailer', 'sinopsis',
    )

    resultados = list(qs)

    return JsonResponse({
        'cantidad': len(resultados),
        'peliculas': resultados
    }, safe=False)


@csrf_exempt
def listar_etiquetas(request):
    # 1. VALIDAR MÉTODO (Solo GET)
    # Al no recibir body, GET es el verbo HTTP correcto.
    if request.method != 'GET':
        return JsonResponse({'error': 'Método no permitido. Usa GET.'}, status=405)

    # 3. CONSULTA A LA BASE DE DATOS
    # Usamos .values() para obtener un diccionario limpio y rápido
    # Ordenamos por nombre alfabéticamente para que se vea ordenado en el front
    etiquetas = Etiqueta.objects.all().order_by('nombre').values(
        'id_etiqueta',
        'nombre'
    )

    lista_etiquetas = list(etiquetas)

    return JsonResponse({
        'total': len(lista_etiquetas),
        'etiquetas': lista_etiquetas
    }, safe=False)