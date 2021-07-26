DROP DATABASE IF EXISTS empleados;
create Schema if not exists UD14_Ej5;
use UD14_Ej5;

create table Almacenes(
	Codigo int auto_increment primary key ,
    Lugar varchar(100),
    Capacidad integer
);

create table Cajas(
	NumReferencia char(5) primary key,
    Contenido varchar(100),
    Valor int,
    Almacen int,
    foreign key (Almacen) references Almacenes(Codigo)
);
SHOW TABLES;
SHOW COLUMNS FROM Almacenes;
SHOW COLUMNS FROM Cajas;