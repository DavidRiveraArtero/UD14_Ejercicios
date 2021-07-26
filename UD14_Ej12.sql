DROP DATABASE IF EXISTS UD14_Ej12;
CREATE DATABASE UD14_Ej12;
USE  UD14_Ej12;

Create table Profesor(
	Nombre varchar (20),
    DNI varchar(9) primary key,
    Direccion varchar(30),
    Titulacion varchar(25),
    Cuota_Por_Hora int
);

create table Curso(
	Nombre varchar(20),
    DNI_Prof varchar(9),
    CodigoCurso int primary key,
    Numero_Maximo_Alumnos int,
    NumeroProfesor int,
	Fecha_Inicio date,
    Fecha_Final date,
    Horas_Curso datetime,
    foreign key (DNI_Prof) references Profesor(DNI)
);

create table Alumnos(
	NombreA varchar(12),
    Codigo Integer,
    Direccion varchar(22),
    Fecha_Nacimiento date,
    Sexo char(1) default "H",
    foreign key (Codigo) references Curso (CodigoCurso)
);

SHOW TABLES;
SHOW COLUMNS FROM Profesor;
SHOW COLUMNS FROM Curso;
SHOW COLUMNS FROM Alumnos;