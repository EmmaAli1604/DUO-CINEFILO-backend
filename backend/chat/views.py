import os
import aiml
import glob
import random
import json
from django.http import HttpResponse, JsonResponse, HttpRequest
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, redirect
from django.conf import settings
from google.cloud import texttospeech
from catalog.views import lista_peliculas

# --- INICIALIZACIÓN DEL KERNEL ---
kernel = aiml.Kernel()
kernel.verbose(True)

aiml_dir = os.path.join(settings.BASE_DIR, 'chat', 'aiml_files')
print(f"📂 Directorio AIML detectado: {aiml_dir}")

aiml_files = glob.glob(os.path.join(aiml_dir, '*.aiml'))

if aiml_files:
    for file_path in aiml_files:
        try:
            print(f"📥 Cargando: {file_path}")
            kernel.learn(file_path)
        except Exception as e:
            print(f"❌ Error cargando {file_path}: {e}")

    total_neuronas = kernel.numCategories()
    print(f"🧠 CEREBRO CARGADO. Total neuronas: {total_neuronas}")
else:
    print("❌ ALERTA: No encontré ningún archivo .aiml en la carpeta.")

# -----------------------------------------------
# LÓGICA DE PETICIONES
# -----------------------------------------------
def obtener_peticion_por_operacion(operacion):
    if operacion == 'B':
        return 'peliculas/find/'
    elif operacion == 'S':
        return ''
    elif operacion == 'R':
        # Llamamos a la vista existente para obtener la lista de películas
        request = HttpRequest()
        json_response = lista_peliculas(request)
        # Decodificamos la respuesta JSON para obtener la lista de Python
        peliculas = json.loads(json_response.content)
        if peliculas:
            # Elegimos una película al azar y la devolvemos como un objeto
            return random.choice(peliculas)
        return '' # Si no hay películas, devolvemos vacío
    else:
        return ''

# -----------------------------------------------
# VISTA STATELESS
# -----------------------------------------------
@csrf_exempt
def chatbot_view(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            user_message = data.get('mensaje_usuario')
            userid = data.get('userid')
            token = data.get('token')

            # Creamos un contexto solo para esta petición
            contexto = {
                'userid': userid,
                'token': token
            }

        except json.JSONDecodeError:
            return JsonResponse({'error': 'JSON inválido en el cuerpo de la solicitud.'}, status=400)

        if user_message:
            # Usamos un ID de sesión único para cada petición, ya que no guardamos estado
            session_id = os.urandom(16).hex()
            
            response_text = kernel.respond(user_message.upper(), session_id)
            if not response_text:
                response_text = "Lo siento, no tengo una respuesta programada para eso. "

            operacion = response_text[-1]
            response_text = response_text[:-1]

            peticion = obtener_peticion_por_operacion(operacion)

            # La respuesta incluye el contexto que se recibió
            return JsonResponse({
                'respuesta': response_text,
                'contexto': contexto,
                'peticion': peticion,
                'operacion': operacion
            })
        else:
            return JsonResponse({'error': "El parámetro 'mensaje_usuario' es requerido en el JSON."}, status=400)

    return JsonResponse({'error': 'Por favor, envía una solicitud POST con un cuerpo JSON.'}, status=405)

# --- CONFIGURACIÓN DE CREDENCIALES ---
os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = os.path.join(settings.BASE_DIR, 'google_credentials.json')

@csrf_exempt
def texto_a_voz(request):
    print("--- INICIO DEBUG TTS ---")
    if request.method != 'POST':
        return JsonResponse({'error': 'Método no permitido'}, status=405)

    try:
        json_path = os.path.join(settings.BASE_DIR, 'google_credentials.json')
        if not os.path.exists(json_path):
            return JsonResponse({'error': f'Archivo no encontrado en: {json_path}'}, status=500)

        os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = json_path

        data = json.loads(request.body)
        texto = data.get('texto')

        client = texttospeech.TextToSpeechClient()
        synthesis_input = texttospeech.SynthesisInput(text=texto)
        voice = texttospeech.VoiceSelectionParams(language_code="es-US", name="es-US-Journey-F")
        audio_config = texttospeech.AudioConfig(audio_encoding=texttospeech.AudioEncoding.MP3)

        response = client.synthesize_speech(input=synthesis_input, voice=voice, audio_config=audio_config)

        return HttpResponse(response.audio_content, content_type='audio/mpeg')

    except Exception as e:
        return JsonResponse({'error': f'Error Backend: {str(e)}'}, status=500)