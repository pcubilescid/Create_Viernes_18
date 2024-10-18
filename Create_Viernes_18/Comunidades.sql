Create database Territorios;
--Drop database Terriotrios;

CREATE TABLE Comunidades (
	ComID TINYINT PRIMARY KEY,
	ConNom VARCHAR(27) NOT NULL
);

--Drop Table Comunidades

CREATE TABLE Comunidades_autoenumeradas(
	ComID TINYINT PRIMARY KEY IDENTITY(1,1),
	ConNom VARCHAR(27) NOT NULL
);

CREATE TABLE Comunidades_autoenumeradas_pares (
	ComID TINYINT PRIMARY KEY IDENTITY(2,4),
	ConNom VARCHAR(27) NOT NULL
);

CREATE TABLE Comunidades_autoenumeradas_null (
	ComID TINYINT PRIMARY KEY IDENTITY(1,1),
	ConNom VARCHAR(27) 
);

Select * From Comunidades

Update Comunidades
set conNom = 'Ceuta'
where ComID = 19;

Delete from Comunidades
where ComID = 5;

