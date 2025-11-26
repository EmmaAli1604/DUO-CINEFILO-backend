import os
import aiml
import glob  # <--- Importamos glob para buscar archivos
from django.shortcuts import render, redirect
from django.conf import settings

# --- INICIALIZACIÓN DEL KERNEL ---
kernel = aiml.Kernel()
kernel.verbose(True)  # Activamos modo chismoso para ver errores en consola

# 1. Construimos la ruta ABSOLUTA a la carpeta aiml_files
aiml_dir = os.path.join(settings.BASE_DIR, 'chat', 'aiml_files')

print(f"📂 Directorio AIML detectado: {aiml_dir}")

# 2. CARGA DIRECTA (Sin usar std-startup.xml para cargar)
# Buscamos todos los archivos .aiml en esa carpeta y los cargamos uno por uno
aiml_files = glob.glob(os.path.join(aiml_dir, '*.aiml'))

if aiml_files:
    for file_path in aiml_files:
        try:
            print(f"📥 Cargando: {file_path}")
            kernel.learn(file_path)  # Carga directa con ruta absoluta
        except Exception as e:
            print(f"❌ Error cargando {file_path}: {e}")

    # Verificación final
    total_neuronas = kernel.numCategories()
    print(f"🧠 CEREBRO CARGADO. Total neuronas: {total_neuronas}")
else:
    print("❌ ALERTA: No encontré ningún archivo .aiml en la carpeta.")


# -----------------------------------------------
# VISTA (Igual que antes)
# -----------------------------------------------
def chatbot_view(request):
    if 'chat_history' not in request.session:
        request.session['chat_history'] = []

    if request.GET.get('action') == 'reset':
        request.session['chat_history'] = []
        request.session.modified = True
        return redirect('chatbot_index')

    if request.method == 'POST':
        user_message = request.POST.get('mensaje_usuario')

        if user_message:
            request.session['chat_history'].append({'sender': 'user', 'text': user_message})

            # Procesamos respuesta
            response_text = kernel.respond(user_message.upper())

            if not response_text:
                response_text = "Lo siento, no tengo una respuesta programada para eso."

            request.session['chat_history'].append({'sender': 'bot', 'text': response_text})
            request.session.modified = True

    context = {
        'chat_history': request.session['chat_history']
    }

    return render(request, 'chatbot/index.html', context)