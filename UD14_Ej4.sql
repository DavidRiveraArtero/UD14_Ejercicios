DROP DATABASE IF EXISTS UD14_Ej4;
create Schema if not exists UD14_Ej4;
USE UD14_Ej4;

CREATE TABLE departamentos (
    codigo INT auto_increment PRIMARY KEY,
    nombre NVARCHAR(100),
    Presupuesto INT
);
CREATE TABLE empleados(
    dni VARCHAR (8) PRIMARY KEY,
    nombre NVARCHAR (100),
    apellidos NVARCHAR (255),
    departamento INT,
    FOREIGN KEY (departamento) REFERENCES departamentos(codigo)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);

SHOW TABLES;
SHOW COLUMNS FROM departamentos;
SHOW COLUMNS FROM empleados;