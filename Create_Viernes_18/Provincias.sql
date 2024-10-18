Create table Provincias(
	ProvID TINYINT PRIMARY KEY,
	ProvNom VARCHAR(22) NOT NULL, 
	ProvHab int NOT NULL,
	ComID TINYINT FOREIGN KEY REFERENCES Comunidades
);

--Drop table Provincias

Select * From Provincias