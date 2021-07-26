DROP DATABASE IF EXISTS UD14_Ej3;
create Schema if not exists UD14_Ej3;
use UD14_Ej3;
create table Fabricantes(
	CodigoF int AUTO_INCREMENT primary key,
    Nombre varchar(100)
);

create table Articulos(
	Codigo int primary key,
    Nombre varchar(100),
    Precio int,
    CodigoA int,
    constraint Codi foreign key (CodigoA) references UD14_Ej3.Fabricantes (CodigoF)
);
SHOW TABLES;
SHOW COLUMNS FROM Fabricantes;
SHOW COLUMNS FROM Articulos;
