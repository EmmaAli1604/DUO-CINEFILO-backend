from django.http import JsonResponse
from django.db import connection

def list_movies(request):
    """Devuelve una lista de películas almacenadas en la base de datos.

    Esta vista ejecuta una consulta SQL sobre la tabla ``Pelicula`` para obtener
    información básica de cada película. Luego normaliza los resultados al
    formato esperado por el frontend React y los devuelve en formato JSON.

    Args:
        request (HttpRequest): Solicitud HTTP recibida desde el frontend.

    Returns:
        JsonResponse: Lista de diccionarios con la información de cada película,
        utilizando llaves como ``id``, ``title``, ``director``, ``producer``,
        ``year``, ``rating``, ``imageUrl`` y ``trailer``.

    Raises:
        django.db.Error: Si la consulta SQL falla; Django gestionará la
        excepción mediante su sistema de errores.
    """
    with connection.cursor() as cursor:
        cursor.execute("""
            SELECT 
                IdPelicula,
                Nombre,
                Director,
                Productora,
                Año,
                Calificacion,
                Poster,
                Trailer
            FROM Pelicula
        """)
        rows = cursor.fetchall()

    movies = [
        {
            "id": str(r[0]),
            "title": r[1],
            "director": r[2],
            "producer": r[3],
            "year": r[4],
            "rating": r[5],
            "imageUrl": r[6],
            "trailer": r[7],
            "duration": ""
        }
        for r in rows
    ]

    return JsonResponse(movies, safe=False)
