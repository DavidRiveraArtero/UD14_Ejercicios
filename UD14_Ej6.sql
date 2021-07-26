DROP DATABASE IF EXISTS UD14_Ej6;
CREATE DATABASE UD14_Ej6;
USE  UD14_Ej6;

CREATE TABLE peliculas(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100),
    calificacionedad INT
);

CREATE TABLE salas(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100),
    fk_codigopelicula INT,
    FOREIGN KEY (fk_codigopelicula) REFERENCES peliculas(codigo)
);

SHOW TABLES;
SHOW COLUMNS FROM peliculas;
SHOW COLUMNS FROM salas;