DROP DATABASE IF EXISTS UD14_Ej10;
CREATE DATABASE UD14_Ej10;
USE  UD14_Ej10;

CREATE TABLE cajeros(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nomapels VARCHAR (255)
);

CREATE TABLE productos(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100),
    precio INT
);

CREATE TABLE maquinas_registradoras(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    piso INT
);

CREATE TABLE venta(
    cajero INT,
    maquina INT,
    producto INT,
    FOREIGN KEY (cajero) REFERENCES cajeros(codigo),
    FOREIGN KEY (maquina) REFERENCES cajeros(codigo),
    FOREIGN KEY (producto) REFERENCES cajeros(codigo),
    PRIMARY KEY (cajero, maquina, producto)
);

SHOW TABLES;
SHOW COLUMNS FROM cajeros;
SHOW COLUMNS FROM productos;
SHOW COLUMNS FROM maquinas_registradoras;
SHOW COLUMNS FROM venta;