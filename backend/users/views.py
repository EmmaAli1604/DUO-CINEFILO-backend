from django.db import connection
from django.db import IntegrityError
import datetime

from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework import status

import secrets
import hashlib

# Create your views here.

def hash_password(password: str) -> str:
    """
    Aplica una función hash a la password en texto plano.
    Ahora usamos SHA-256 como ejemplo, pero puedes cambiar
    la implementación cuando definas el algoritmo definitivo.

    Args: 
    password (str) contraseña proporcionada por el usuario
    Returns :
    str Hash hexadecimal generado con SHA-256
    """
    return hashlib.sha256(password.encode("utf-8")).hexdigest()

@api_view(["POST"])
@permission_classes([AllowAny])
def login(request):
    """
        Recibe un JSON con el username, busca el usuario en la BD externa (Postgres),
        genera un bearer token, lo guarda en la misma tabla de usuario
        y devuelve username + token.

        Request JSON:
            {
                "Idusuario": "mi_usuario"
                "password": "password"
            }

        Response 200 JSON:
            {
                "Idusuario": "mi_usuario",
                "token": "Bearer abc123..."
            }
        """
    username = request.data.get("idusuario")
    password = request.data.get("password")
    algo = ""

    if not username:
        return Response(
            {"detail": "El campo 'Idusuario' es obligatorio."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    if not password:
        return Response(
            {"detail": "El campo 'password' es obligatorio."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    hashPass = hash_password(password)
    with connection.cursor() as cursor:
        cursor.execute(
            "SELECT * FROM usuario WHERE Idusuario = %s AND password = %s",
            [username,hashPass],
        )
        row = cursor.fetchone()

    if row is None:
        return Response(
            {"detail": "Usuario o contraseña incorrecta."},
            status=status.HTTP_404_NOT_FOUND,
        )

    raw_token = secrets.token_urlsafe(32)
    bearer_token = f"Bearer {raw_token}"

    with connection.cursor() as cursor:
        cursor.execute(
            "UPDATE usuario SET token = %s WHERE Idusuario = %s AND password = %s",
            [raw_token, username, hashPass],
        )
        print("estoy haciendo el update")

    return Response(
        {
            "username": username,
            "token": raw_token,
        },
        status=status.HTTP_200_OK,
    )

@api_view(["POST"])
@permission_classes([AllowAny])
def logout(request):
    """
        Recibe un JSON con el username, un header con el token y busca el usuario en la BD externa (Postgres),
        quita el token de la tabla de usuario.

        Request JSON:
            {
                "Idusuario": "mi_usuario"
            }

        RESPONSE 200 JSON:
            {
                "mensaje": "Usuario desconectado correctamente."
            }
    """
    username = request.data.get("idusuario")
    token = request.headers.get("Authorization")
    print(token)
    token = token.split(" ")[1] if token else None
    if not username:
        return Response(
            {"detail": "El campo 'Idusuario' es obligatorio."},
            status=status.HTTP_400_BAD_REQUEST,
        )
    if not token:
        return Response(
            {"detail": "El campo 'Authorization' es obligatorio."},
        )

    with connection.cursor() as cursor:
        cursor.execute(
            "UPDATE usuario SET token = NULL WHERE Idusuario = %s AND token = %s",
            [username, token],
        )

    return Response(
        {
            "mensaje": "Usuario desconectado correctamente."
        },
        status=status.HTTP_200_OK,
    )


@api_view(["POST"])
@permission_classes([AllowAny])
def register_user(request):
    """
    Crea un usuario en la tabla Usuario.

    Tabla:
        CREATE TABLE Usuario (
          IdUsuario VARCHAR(15) PRIMARY KEY,
          Password VARCHAR(255),
          Nombre VARCHAR(50),
          ApellidoPaterno VARCHAR(50),
          ApellidoMaterno VARCHAR(50),
          FechaNacimiento DATE,
          Genero CHAR(1),
          Token VARCHAR(255)
        );

    Request JSON:
        {
          "idusuario": "usuario1",
          "password": "mi_password",
          "nombre": "Juan",
          "apellidopaterno": "Pérez",
          "apellidomaterno": "García",
          "fechanacimiento": "2000-01-15",
          "genero": "M"
          "email": "prueba@gmail.com"
        }

    Respuestas:
      - 200: Usuario creado correctamente.
      - 400: Error de validación o inserción (PK duplicada, formato fecha, etc.).
    """
    data = request.data

    required_fields = [
        "idusuario",
        "password",
        "email",
        "nombre",
        "apellidopaterno",
        "apellidomaterno",
        "fechanacimiento",
        "genero",
    ]

    missing = [f for f in required_fields if not data.get(f)]
    if missing:
        return Response(
            {
                "detail": "Faltan campos obligatorios.",
                "missing_fields": missing,
            },
            status=status.HTTP_400_BAD_REQUEST,
        )

    id_usuario = data["idusuario"]
    password_plain = data["password"]
    nombre = data["nombre"]
    apellido_paterno = data["apellidopaterno"]
    apellido_materno = data["apellidomaterno"]
    fecha_nacimiento_str = data["fechanacimiento"]
    genero = data["genero"]
    email = data["email"]

    # Validar longitud de IdUsuario (por si acaso)
    if len(id_usuario) > 15:
        return Response(
            {"detail": "IdUsuario no debe exceder 15 caracteres."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    # Validar Genero (ejemplo simple)
    if len(genero) != 1:
        return Response(
            {"detail": "Genero debe ser un solo caracter (ej. 'M' o 'F')."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    # Parsear fecha (esperando formato YYYY-MM-DD)
    try:
        fecha_nacimiento = datetime.date.fromisoformat(fecha_nacimiento_str)
    except ValueError:
        return Response(
            {
                "detail": "FechaNacimiento debe tener formato YYYY-MM-DD.",
            },
            status=status.HTTP_400_BAD_REQUEST,
        )

    # Hashear la contraseña antes de guardarla
    password_hash = hash_password(password_plain)

    try:
        with connection.cursor() as cursor:
            cursor.execute(
                """
                INSERT INTO Usuario (
                    IdUsuario,
                    Password,
                    Nombre,
                    ApellidoPaterno,
                    ApellidoMaterno,
                    FechaNacimiento,
                    Genero,
                    Token,
                    Email
                )
                VALUES (%s, %s, %s, %s, %s, %s, %s, NULL, %s)
                """,
                [
                    id_usuario,
                    password_hash,
                    nombre,
                    apellido_paterno,
                    apellido_materno,
                    fecha_nacimiento,
                    genero,
                    email
                ],
            )
    except IntegrityError:
        # Posible PK duplicada (IdUsuario ya existe)
        return Response(
            {"detail": "Ya existe un usuario con ese IdUsuario."},
            status=status.HTTP_400_BAD_REQUEST,
        )
    except Exception as e:
        # Error genérico de BD
        return Response(
            {"detail": "Error al crear el usuario en la base de datos."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    return Response(
        {"detail": "Usuario creado correctamente."},
        status=status.HTTP_200_OK,
    )