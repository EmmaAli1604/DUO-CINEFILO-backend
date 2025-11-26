import aiml
import os

# Script para probar AIML sin Django
kernel = aiml.Kernel()
kernel.verbose(True)  # Te mostrará si falla el XML

print("Intentando cargar std-startup.xml...")

if os.path.exists("std-startup.xml"):
    kernel.learn("std-startup.xml")
    print("Ejecutando comando de carga...")
    kernel.respond("LOAD AIML B")

    total = kernel.numCategories()
    print(f"--------------------------------")
    print(f"Neuronas cargadas: {total}")

    if total > 1:
        print("✅ ¡ÉXITO! El cerebro leyó los dos archivos.")
        print(kernel.respond("HOLA"))
    else:
        print("❌ ERROR: Solo cargó el startup. Revisa basic_chat.aiml")
else:
    print("❌ No encuentro el archivo std-startup.xml en esta carpeta.")