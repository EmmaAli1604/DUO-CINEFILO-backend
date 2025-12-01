# DUO-CINEFILO-backend

Este repositorio contiene el backend del proyecto **Dúo Cinéfilo**, una plataforma web para una cineteca de cine independiente. El backend proporciona servicios de autenticación, manejo de usuarios, catálogo de películas, comentarios y horarios.

> El frontend del proyecto se encuentra en un repositorio independiente.

---

## Equipo de Desarrollo (HIKARU)

- **Emma Alicia Jiménez Sánchez**  
- **Alejandro Jacome Delgado**  
- **Juan Carlos López Ramírez**  
- **Karla Alejandra Camacho Gutiérrez**

---

## Tecnologías Utilizadas

- **Python 3**
- **Django 5**
- **PostgreSQL** (Docker)
- **Docker / Docker Compose**

---

## Estructura del Proyecto

```text
.
├── backend/
│   ├── config/        # Configuración del proyecto (settings, urls, wsgi, asgi)
│   ├── users/         # Registro, login y manejo de usuarios
│   ├── catalog/       # Lógica del catálogo de películas
│   ├── reviews/       # Comentarios y calificaciones
│   ├── events/        # Horarios de funciones
│   ├── chat/          # Interfaz del chatbot (si aplica)
│   ├── commerce/      # Lógica de compras/boletos (si aplica)
│   └── manage.py
├── sql/
│   └── scrpt.sql      # Script para crear las tablas de PostgreSQL
├── docker-compose.yml # Configuración del contenedor PostgreSQL
├── requirements.txt   # Dependencias del backend
└── README.md
````

---

## Requisitos Previos

* **Docker Desktop** instalado y ejecutándose.
* **Python 3.10+** instalado.
* **Node.js** solo si se va a levantar también el frontend.

---

## Instrucciones de Instalación y Ejecución

### 1. Clonar el repositorio

```bash
git clone https://github.com/EmmaAli1604/DUO-CINEFILO-backend.git
cd DUO-CINEFILO-backend
```

---

### 2. Levantar el contenedor de PostgreSQL

```bash
docker compose up -d
```

Esto inicia una base de datos PostgreSQL dentro de un contenedor llamado `duo_postgres`.

---

### 3. Crear y activar un entorno virtual

```bash
python -m venv .venv
```

Activar:

* En **Windows**

  ```bash
  .venv\Scripts\activate
  ```

* En **Linux / Mac**

  ```bash
  source .venv/bin/activate
  ```

---

### 4. Instalar dependencias

```bash
pip install -r requirements.txt
```

---

### 5. Aplicar migraciones de Django

Entrar a la carpeta `backend/` y ejecutar:

```bash
cd backend
python manage.py migrate
```

---

### 6. Crear la base de datos del proyecto

Ejecutar el script SQL dentro del contenedor:

```bash
docker exec -i duo_postgres psql -U duo -d duo < sql/scrpt.sql
```

Esto creará todas las tablas usadas por el backend:
`Pelicula`, `Usuario`, `Comentario`, `Horario`, `Etiqueta`, `PeliculaEtiqueta`, etc.

---

### 7. Ejecutar el servidor de desarrollo

Desde `backend/`:

```bash
python manage.py runserver
```

El backend estará disponible en:

* **[http://127.0.0.1:8000/](http://127.0.0.1:8000/)**

### 8. Variables de entorno

para funcionar, el backend requiere un archivo .env con las variables de entorno nesesarias, la estructura que requiere el .env es:

```


# Django
SECRET_KEY=<Key>
DEBUG=<Bool> 

# Base de Datos
DB_NAME=<Nombre de la BD>
DB_USER=<Nombre de usuario>
DB_PASSWORD=<password>
DB_HOST=<Host> #para pruebas en local, usar localshost
DB_PORT=<Puerto de la BD> 
```
### 9. Credenciales de google cloud
para la funcion de TTS (Text-To-Speech), se usan los servicios de Google Cloud, especificamente el servicio de Text-to-Speech, para poder usar dicho servicio, se requiere hacer una cuenta y agregar la facturacion (al hacerlo; google solicitaun deposito que se te regresara en cuanto des de baja tu cuenta). los pasos a seguir para activar el servicio son:

- ir a la [consola de google cloud](https://console.cloud.google.com/)
- crea una cuenta y activa la facturacion
- crea un nuevo proyecto
- busca Text to Speech y agregalo al proyecto
- ve a IAM y Administracion, en ese menu ve a cuentas de servicio
- crea una nueva cuenta de servicio, dale el rol de propietario y dale listo
- con la cuenta creada, selecionala y entra a claves, ahi seleciona generar nueva clave, al instante te descargara un archivo con las claves, tienes que guardarlo en el mismo lugar que el .env para que el proyecto funcione, ademas: debes renombrarlo como `google_credentials.json`
  

## Licencia

Proyecto académico desarrollado para la materia
**Diseño de Interfaces de Usuario Multimodal – Facultad de Ciencias, UNAM (2025).**

```
