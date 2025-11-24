from django.http import JsonResponse
from django.db import connection

def list_movies(request):
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
