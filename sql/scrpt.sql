-- -----------------------------------------------------
-- Script de Creación para PostgreSQL - CineDuoDB
-- -----------------------------------------------------
-- SELECT * FROM usuario WHERE Idusuario = 'kyogre235' AND Password = 'hola';

-- 1. Eliminación de tablas si ya existen (en orden inverso de dependencia)
DROP TABLE IF EXISTS Comentario;
DROP TABLE IF EXISTS Horario;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Pelicula;
DROP TABLE IF EXISTS Cineteca;

-- -----------------------------------------------------
-- Tabla: Cineteca
-- -----------------------------------------------------
CREATE TABLE Cineteca (
  IdCineteca BIGINT PRIMARY KEY,
  Nombre VARCHAR(50),
  Direccion VARCHAR(50)
);

COMMENT ON COLUMN Cineteca.IdCineteca IS 'Identificador único de la cineteca (Llave Primaria)';
COMMENT ON COLUMN Cineteca.Nombre IS 'Nombre del complejo de cine';
COMMENT ON COLUMN Cineteca.Direccion IS 'Dirección física de la cineteca';


-- -----------------------------------------------------
-- Tabla: Pelicula
-- -----------------------------------------------------
CREATE TABLE Pelicula (
  IdPelicula BIGINT PRIMARY KEY,
  Nombre VARCHAR(50),
  Director VARCHAR(50),
  Productora VARCHAR(50),
  Año SMALLINT,
  Calificacion REAL,
  Poster VARCHAR(50)
);

COMMENT ON COLUMN Pelicula.IdPelicula IS 'Identificador único de la película (Llave Primaria)';
COMMENT ON COLUMN Pelicula.Nombre IS 'Título oficial de la película';
COMMENT ON COLUMN Pelicula.Director IS 'Nombre del director de la película';
COMMENT ON COLUMN Pelicula.Productora IS 'Casa productora que realizó la película';
COMMENT ON COLUMN Pelicula.Año IS 'Año de estreno de la película';
COMMENT ON COLUMN Pelicula.Calificacion IS 'Calificación promedio de la película (ej: 8.5)';
COMMENT ON COLUMN Pelicula.Poster IS 'Ruta o URL de la imagen del póster';


-- -----------------------------------------------------
-- Tabla: Usuario
-- -----------------------------------------------------
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

COMMENT ON COLUMN Usuario.IdUsuario IS 'Identificador único del usuario (Llave Primaria)';
COMMENT ON COLUMN Usuario.Password IS 'Hash de la contraseña del usuario';
COMMENT ON COLUMN Usuario.Nombre IS 'Nombre(s) del usuario';
COMMENT ON COLUMN Usuario.ApellidoPaterno IS 'Apellido paterno del usuario';
COMMENT ON COLUMN Usuario.ApellidoMaterno IS 'Apellido materno del usuario';
COMMENT ON COLUMN Usuario.FechaNacimiento IS 'Fecha de nacimiento del usuario';
COMMENT ON COLUMN Usuario.Genero IS 'Género (ej: M, F, O)';
COMMENT ON COLUMN Usuario.Token IS 'Token de sesión o autenticación';


-- -----------------------------------------------------
-- Tabla: Horario
-- -----------------------------------------------------
CREATE TABLE Horario (
  IdHorario BIGINT PRIMARY KEY,
  IdPelicula BIGINT NOT NULL,
  IdCineteca BIGINT NOT NULL,
  Horario TIMESTAMP,
  
  -- Definición de Llaves Foráneas
  CONSTRAINT fk_horario_pelicula
    FOREIGN KEY (IdPelicula)
    REFERENCES Pelicula (IdPelicula)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_horario_cineteca
    FOREIGN KEY (IdCineteca)
    REFERENCES Cineteca (IdCineteca)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

COMMENT ON COLUMN Horario.IdHorario IS 'Identificador único de la función/proyección (Llave Primaria)';
COMMENT ON COLUMN Horario.IdPelicula IS 'Llave foránea que referencia a la película';
COMMENT ON COLUMN Horario.IdCineteca IS 'Llave foránea que referencia a la cineteca';
COMMENT ON COLUMN Horario.Horario IS 'Fecha y hora exacta de inicio de la función';


-- -----------------------------------------------------
-- Tabla: Comentario
-- -----------------------------------------------------
CREATE TABLE Comentario (
  IdComentario BIGINT PRIMARY KEY,
  IdUsuario VARCHAR(15) NOT NULL,
  IdPelicula BIGINT NOT NULL,
  Texto VARCHAR(500),
  
  -- Definición de Llaves Foráneas
  CONSTRAINT fk_comentario_usuario
    FOREIGN KEY (IdUsuario)
    REFERENCES Usuario (IdUsuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_comentario_pelicula
    FOREIGN KEY (IdPelicula)
    REFERENCES Pelicula (IdPelicula)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

COMMENT ON COLUMN Comentario.IdComentario IS 'Identificador único del comentario (Llave Primaria)';
COMMENT ON COLUMN Comentario.IdUsuario IS 'Llave foránea que referencia al usuario que escribió el comentario';
COMMENT ON COLUMN Comentario.IdPelicula IS 'Llave foránea que referencia a la película comentada';
COMMENT ON COLUMN Comentario.Texto IS 'Contenido textual del comentario';
