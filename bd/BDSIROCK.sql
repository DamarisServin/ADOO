drop database if exists SIROCK;
create database SIROCK;
use SIROCK;

CREATE TABLE Album (
		 id int not null primary key AUTO_INCREMENT,
         nombre VARCHAR(255),
         añoLanzamiento DATE,
         numeroPistas INTEGER CHECK (numTracks > 0),
         estudioGrabacion varchar(100),
         portada varchar(100)
);

CREATE TABLE Cancion (
		 id int not null primary key AUTO_INCREMENT,
         nombre VARCHAR(70),
         duracion varchar(5),
         albumId int,
         foreign key (albumId) references Album(id)
);

CREATE TABLE Artista (
		 id int not null primary key AUTO_INCREMENT,
         nombre VARCHAR(50),
         genero VARCHAR(30) NOT NULL,
         cdNacimiento varchar(50),
         biografía VARCHAR(400),
         banda boolean,
         bandaNombre varchar(70), 
         sitioWeb varchar(70)
);


CREATE TABLE EstacionDeRadio (
		 usuario varchar(50) not null primary key,
         contraseña varchar(50)
);

CREATE TABLE ConductorDeRadio (
         nombre VARCHAR(50) not null
);

CREATE TABLE ArtistaCancion (
         artistaId int not null,
         cancionId int not null,
         
         foreign key (cancionId) references Cancion(id),
         foreign key (artistaId) references Artista(id)
);


CREATE TABLE ArtistaAlbum (
         artistaId int not null,
         albumId int not null,
         foreign key (albumId) references Album(id),
         foreign key (artistaId) references Artista(id)
);


INSERT INTO Album VALUES (1, 'Aladdin Sane', '1973/10/2', 10, 'RCA Records', 'portada.jpg');

INSERT INTO Cancion values (1, 'Watch That Man', '4:29', 1);
INSERT INTO Cancion values (2, 'Aladdin Sane', '5:06', 1);
INSERT INTO Cancion values (3, 'Drive In Saturday', '4:30', 1);
INSERT INTO Cancion values (4, 'Panic In Detroit', '4:26', 1);
INSERT INTO Cancion values (5, 'Cracked Actor', '3:01', 1);
INSERT INTO Cancion values (6, 'Time', '5:13', 1);
INSERT INTO Cancion values (7, 'The Prettiest Star', '3:30', 1);
INSERT INTO Cancion values (8, 'Lets Spend The Night Together', '3:09', 1);
INSERT INTO Cancion values (9, 'The Jean Genie', '4:05', 1);
INSERT INTO Cancion values (10, 'Lady Grinning Soul', '3:50', 1);

INSERT INTO Artista values (1, 'David Bowie', 'Rock','1947/01/08', 'David Robert Jones (Londres, 8 de enero de 1947-Nueva York, 10 de enero de 2016),6​7​ más conocido por su nombre artístico David Bowie (AFI: [ˈboʊ.iː]),8​ fue un músico y compositor británico de rock, quien ejerció a su vez como actor, productor discográfico, arreglista y diseñador gráfico. ', false, null, null);

select * from Artista;
select * from Cancion;
select * from Album;

