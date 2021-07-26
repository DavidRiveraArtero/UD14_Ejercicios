DROP DATABASE IF EXISTS UD14_Ej9;
create Schema if not exists UD14_Ej9;
USE UD14_Ej9;

Create table Cientifico(
	DNI varchar(8) primary key,
    NomApels varchar(255)
);

create table Proyecto(
	Id char(4) primary key,
    Nombre varchar(255),
    Horas int
);

create table Asignado_A(
	Cientifico varchar(8) primary key,
    Proyecto char(4),
    foreign key (Cientifico) references Cientifico(DNI),
    foreign key (Proyecto) references Proyecto(Id)
);
SHOW TABLES;
SHOW COLUMNS FROM Cientifico;
SHOW COLUMNS FROM Proyecto;
SHOW COLUMNS FROM Asignado_A;