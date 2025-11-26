import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from users.models import Usuario
from .models import Horario
from catalog.models import Pelicula
from .models import Cineteca


@csrf_exempt
def consultar_horarios_pelicula(request):
    # 1. MÉTODO POST
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido. Usa POST.'}, status=405)

    # 2. AUTENTICACIÓN (Tu estándar Bearer Token)
    auth_header = request.headers.get('Authorization')
    if not auth_header or not auth_header.startswith('Bearer '):
        return JsonResponse({'error': 'Falta el header Authorization'}, status=401)

    token_recibido = auth_header.split(' ')[1]

    if not Usuario.objects.filter(token=token_recibido).exists():
        return JsonResponse({'error': 'Token inválido o expirado'}, status=401)

    # 3. LEER JSON DEL BODY
    try:
        data = json.loads(request.body)
        id_pelicula = data.get('idpelicula')  # Según tu requerimiento

        if not id_pelicula:
            return JsonResponse({'error': 'Falta el campo "idpelicula"'}, status=400)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

    # 4. CONSULTA INTELIGENTE (JOIN)
    # Verificamos primero si la película existe para dar un error más claro
    if not Pelicula.objects.filter(pk=id_pelicula).exists():
        return JsonResponse({'error': 'La película no existe'}, status=404)

    # Traemos los horarios + Datos de la Cineteca
    qs = Horario.objects.filter(pelicula_id=id_pelicula).values(
        'id_horario',
        'horario',
        'cineteca_id',  # ID de la cineteca
        'cineteca__nombre',  # JOIN automático: Nombre
        'cineteca__direccion'  # JOIN automático: Dirección
    ).order_by('horario')  # Ordenados por fecha (más próximo primero)

    lista_horarios = list(qs)

    # (Opcional) Formatear la fecha para que sea más legible si quieres
    # Por defecto Django devuelve un objeto datetime o string ISO
    for item in lista_horarios:
        # Ejemplo: Convertir "2025-12-01T18:00:00" a un formato limpio
        # Esto depende de si values() te devuelve strings o objetos datetime
        # Generalmente devuelve datetime en backend, JSON lo serializa después.
        pass

    return JsonResponse({
        'idpelicula': id_pelicula,
        'total_funciones': len(lista_horarios),
        'funciones': lista_horarios
    }, safe=False)


@csrf_exempt
def consultar_horarios_cineteca(request):
    # 1. VALIDACIONES (Método y Auth)
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido. Usa POST.'}, status=405)

    auth_header = request.headers.get('Authorization')
    if not auth_header or not auth_header.startswith('Bearer '):
        return JsonResponse({'error': 'Falta el header Authorization'}, status=401)

    token_recibido = auth_header.split(' ')[1]

    if not Usuario.objects.filter(token=token_recibido).exists():
        return JsonResponse({'error': 'Token inválido o expirado'}, status=401)

    # 2. LEER JSON
    try:
        data = json.loads(request.body)
        id_cineteca = data.get('idcineteca')

        if not id_cineteca:
            return JsonResponse({'error': 'Falta el campo "idcineteca"'}, status=400)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

    # 3. VERIFICAR SI EXISTE LA CINETECA
    # (Esto es opcional pero bueno para dar errores claros)
    try:
        cine = Cineteca.objects.get(pk=id_cineteca)
        nombre_cine = cine.nombre
    except Cineteca.DoesNotExist:
        return JsonResponse({'error': 'La cineteca no existe'}, status=404)

    # 4. CONSULTA (JOIN HACIA PELÍCULA)
    # Filtramos por la cineteca recibida.
    # Traemos los datos de la película asociada a cada horario.
    qs = Horario.objects.filter(cineteca_id=id_cineteca).values(
        'id_horario',
        'horario',
        'pelicula_id',  # ID de la peli
        'pelicula__nombre',  # JOIN: Nombre de la peli
        'pelicula__poster',  # JOIN: Poster (útil para el frontend)
        'pelicula__director',  # JOIN: Director
        'pelicula__sinopsis'  # JOIN: Sinopsis (si la quieres mostrar)
    ).order_by('horario')

    lista_funciones = list(qs)

    return JsonResponse({
        'idcineteca': id_cineteca,
        'nombrecineteca': nombre_cine,
        'total_funciones': len(lista_funciones),
        'funciones': lista_funciones
    }, safe=False)
# Create your views here.
