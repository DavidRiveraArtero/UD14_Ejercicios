DROP DATABASE IF EXISTS UD14_Ej8;
CREATE DATABASE UD14_Ej8;
USE  UD14_Ej8;

CREATE TABLE piezas(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100)
);

CREATE TABLE proveedores(
    id CHAR (4) PRIMARY KEY,
    nombre VARCHAR (100)
);

CREATE TABLE suministra(
    fk_piezas INT,
    fk_proveedores CHAR (4),
    precio INT,
    FOREIGN KEY (fk_piezas) REFERENCES piezas(codigo),
    FOREIGN KEY (fk_proveedores) REFERENCES proveedores(id),
    PRIMARY KEY (fk_piezas, fk_proveedores)
);
SHOW TABLES;
SHOW COLUMNS FROM piezas;
SHOW COLUMNS FROM proveedores;
SHOW COLUMNS FROM suministra;