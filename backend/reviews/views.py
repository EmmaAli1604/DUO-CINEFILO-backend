from django.shortcuts import render
import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from users.models import Usuario
from catalog.models import Pelicula
from .models import Comentario
import time
import random

def generar_id_comentario():
    # Retorna un número entero largo basado en la hora actual
    # Ejemplo: 1732415678912
    return int(time.time() * 1000) + random.randint(0, 99)


@csrf_exempt
def crear_comentario(request):
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido. Usa POST.'}, status=405)

    # ---------------------------------------------------------
    # 1. AUTH: Verificar Token
    # ---------------------------------------------------------
    auth_header = request.headers.get('Authorization')
    if not auth_header or not auth_header.startswith('Bearer '):
        return JsonResponse({'error': 'Falta el header Authorization'}, status=401)

    token_recibido = auth_header.split(' ')[1]

    # Buscamos al dueño del token
    try:
        usuario_del_token = Usuario.objects.get(token=token_recibido)
    except Usuario.DoesNotExist:
        return JsonResponse({'error': 'Token inválido'}, status=401)

    # ---------------------------------------------------------
    # 2. PROCESAR JSON
    # ---------------------------------------------------------
    try:
        data = json.loads(request.body)
        id_pelicula = data.get('idpelicula')
        id_usuario_body = data.get('idusuario')
        texto_comentario = data.get('comentario')
        calificacion = data.get('calificacion')  # ¡Necesario por la DB!

        # Validaciones básicas
        if not all([id_pelicula, id_usuario_body, texto_comentario, calificacion]):
            return JsonResponse({'error': 'Faltan datos (id_pelicula, id_usuario, comentario, calificacion)'},
                                status=400)

        # SEGURIDAD EXTRA:
        # Validar que el usuario del body sea el mismo del token.
        # Si 'id_usuario' en tu tabla Usuario es string, comparamos strings.
        if str(usuario_del_token.pk) != str(id_usuario_body):
            return JsonResponse({'error': 'El token no corresponde al usuario indicado en el body'}, status=403)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

    # ---------------------------------------------------------
    # 3. VERIFICAR EXISTENCIA DE LA PELÍCULA
    # ---------------------------------------------------------
    if not Pelicula.objects.filter(pk=id_pelicula).exists():
        return JsonResponse({'error': 'La película no existe'}, status=404)

    # ---------------------------------------------------------
    # 4. INSERTAR COMENTARIO
    # ---------------------------------------------------------
    try:
        nuevo_comentario = Comentario(
            id_comentario=generar_id_comentario(),
            usuario_id=id_usuario_body,  # Django usa _id para asignar la FK directa
            pelicula_id=id_pelicula,
            calificacion=0,
            texto=texto_comentario
        )
        nuevo_comentario.save()  # Guarda en la BD

        return JsonResponse({
            'mensaje': 'Comentario creado con éxito',
            'id_generado': nuevo_comentario.id_comentario
        }, status=201)

    except Exception as e:
        return JsonResponse({'error': f'Error al guardar en BD: {str(e)}'}, status=500)


@csrf_exempt
def listar_comentarios_json(request):
    # 1. CAMBIO A POST: Para poder leer el body JSON de forma estándar
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido. Usa POST y envía JSON.'}, status=405)

    # 2. AUTENTICACIÓN
    auth_header = request.headers.get('Authorization')
    if not auth_header or not auth_header.startswith('Bearer '):
        return JsonResponse({'error': 'Falta el header Authorization'}, status=401)

    token_recibido = auth_header.split(' ')[1]

    if not Usuario.objects.filter(token=token_recibido).exists():
        return JsonResponse({'error': 'Token inválido o expirado'}, status=401)

    # 3. LEER EL ID DEL BODY JSON
    try:
        data = json.loads(request.body)
        id_pelicula = data.get('idpelicula')

        if id_pelicula is None:
            return JsonResponse({'error': 'Falta el campo "idpelicula" en el JSON'}, status=400)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

    # 4. CONSULTA DB
    # Traemos los comentarios filtrando por la película recibida
    comentarios = Comentario.objects.filter(pelicula_id=id_pelicula).values(
        'id_comentario',
        'calificacion',
        'texto',
        'usuario_id',
        'usuario__nombre',  # JOIN automático para el nombre
        'usuario__apellido_paterno'  # JOIN automático para el apellido
    ).order_by('-id_comentario')

    lista_comentarios = list(comentarios)

    return JsonResponse({
        'idpelicula_solicitado': id_pelicula,
        'cantidad': len(lista_comentarios),
        'comentarios': lista_comentarios
    }, safe=False)


@csrf_exempt
def incrementar_calificacion(request):
    # 1. MÉTODO: Solo POST para recibir JSON
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido. Usa POST.'}, status=405)

    # 2. AUTENTICACIÓN
    auth_header = request.headers.get('Authorization')
    if not auth_header or not auth_header.startswith('Bearer '):
        return JsonResponse({'error': 'Falta el header Authorization'}, status=401)

    token_recibido = auth_header.split(' ')[1]

    if not Usuario.objects.filter(token=token_recibido).exists():
        return JsonResponse({'error': 'Token inválido o expirado'}, status=401)

    # 3. OBTENER ID DEL JSON
    try:
        data = json.loads(request.body)
        id_comentario = data.get('idcomentario')

        if id_comentario is None:
            return JsonResponse({'error': 'Falta el campo "idcomentario"'}, status=400)

    except json.JSONDecodeError:
        return JsonResponse({'error': 'JSON mal formado'}, status=400)

    # 4. ACTUALIZAR CALIFICACIÓN
    try:
        # Buscamos el comentario por su PK (Primary Key)
        comentario = Comentario.objects.get(pk=id_comentario)

        # Incrementamos
        comentario.calificacion += 1
        comentario.save()  # Guardamos en la BD

        return JsonResponse({
            'mensaje': 'Calificación actualizada',
            'id_comentario': comentario.id_comentario,
            'nueva_calificacion': comentario.calificacion
        }, status=200)

    except Comentario.DoesNotExist:
        return JsonResponse({'error': 'El comentario no existe'}, status=404)
    except Exception as e:
        return JsonResponse({'error': f'Error interno: {str(e)}'}, status=500)
# Create your views here.
