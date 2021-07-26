DROP DATABASE IF EXISTS UD14_Ej7;
create Schema if not exists UD14_Ej7;
USE UD14_Ej7;

create table Despacho(
	Numero int primary key,
    Capacidad int
);

Create table Directores(
	DNI varchar(8) primary key,
    NomApels varchar(255),
    DNIJefeF varchar(8),
    DespachoF int,
    constraint DNIJefe foreign key (DNIJefeF) references Directores(DNI),
    foreign key (DespachoF) references Despacho(Numero)
);

SHOW TABLES;
SHOW COLUMNS FROM Directores;
SHOW COLUMNS FROM Despacho;