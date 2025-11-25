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

---

## Endpoints Principales 

### Usuarios

* `POST /api/users/register/`
  Registra un nuevo usuario.

* `POST /api/users/login/`
  Inicia sesión y genera un token temporal.

---

### Películas

* `GET /api/peliculas/`
  Devuelve una lista en formato JSON de todas las películas almacenadas en PostgreSQL.
  Este endpoint es consumido directamente por el frontend.

---

## Licencia

Proyecto académico desarrollado para la materia
**Diseño de Interfaces de Usuario Multimodal – Facultad de Ciencias, UNAM (2025).**

```