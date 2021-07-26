DROP DATABASE IF EXISTS UD14_Ej11;
create Schema if not exists UD14_Ej11;
USE UD14_Ej11;

Create table Facultad(
	Codigo int primary key,
    Nombre varchar(100)
);

Create table Investigadores(
	DNI varchar(8) primary key,
    NomApels varchar(255),
    Facultad int,
    foreign key (Facultad) references Facultad(Codigo)
);

create table Equipos(
	NumSerie char(4) primary key,
    Nombre varchar(100),
    Facultad int,
    foreign key (Facultad) references Facultad(Codigo)
);
create table Reserva(
	DNI varchar(8) primary key,
    NumSerie char(4),
    Comienzo datetime,
    Fin datetime,
    foreign key (DNI) references Investigadores(DNI),
	foreign key (NumSerie) references Equipos(NumSerie)
);

SHOW TABLES;
SHOW COLUMNS FROM Facultad;
SHOW COLUMNS FROM Investigadores;
SHOW COLUMNS FROM Equipos;
SHOW COLUMNS FROM Reserva;


