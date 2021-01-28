CREATE TABLE Usuarios(
	ID							VARCHAR(50)		NOT NULL PRIMARY KEY,
	Correo						VARCHAR(50)		NOT NULL,
	Nombre						VARCHAR(50)		NULL,
	APaterno					VARCHAR(50)		NULL,
	AMaterno					VARCHAR(50)		NULL,
	Contrasena					VARCHAR(200)	NULL,
	Estatus						VARCHAR(50)		NOT NULL,
	Bloqueado					BIT				NOT NULL,
	EnLinea						BIT				NOT NULL,
	FechaAlta					SMALLDATETIME	NOT NULL,
	FechaBloqueo				SMALLDATETIME	NULL,
	UltimoAcceso				SMALLDATETIME	NULL,
	CambioContrasena			SMALLDATETIME	NULL
)

CREATE TABLE Proyectos(
	--PRY00001
	ID							CHAR(8)			NOT NULL PRIMARY KEY,
	Nombre						VARCHAR(200)	NOT NULL,
	Direccion					VARCHAR(500)	NULL,
	Monto						MONEY			NOT NULL,
	Observaciones				VARCHAR(MAX)	NULL,
	Avances						VARCHAR(50)		NOT NULL,
	Estatus						VARCHAR(50)		NOT NULL,
	UsuarioAlta					VARCHAR(50)		NOT NULL,
	FechaAlta					SMALLDATETIME	NOT NULL,
	UsuarioModificacion			VARCHAR(50)		NOT NULL,
	FechaModificacion			SMALLDATETIME	NOT NULL
)

CREATE TABLE ImagenesAvancesProyectos(
	ID							INT	IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Proyecto					CHAR(8)			NOT NULL FOREIGN KEY REFERENCES Proyectos(ID),
	Avance						VARCHAR(50)		NOT NULL,
	Nombre						VARCHAR(100)	NOT NULL,
	Descripcion					VARCHAR(MAX)	NOT NULL,
	Direccion					VARCHAR(MAX)	NOT NULL
)

CREATE TABLE Inversiones(
	ID							CHAR(10)		NOT NULL	PRIMARY KEY,
	Usuario						VARCHAR(50)		NOT NULL	FOREIGN KEY REFERENCES Usuarios(ID),
	Proyecto					CHAR(8)			NOT NULL	FOREIGN KEY REFERENCES Proyectos(ID),
	Fecha						SMALLDATETIME	NOT NULL,
	Monto						MONEY			NOT NULL,
	Tipo						CHAR(1)			NOT NULL,
	Estatus						VARCHAR(50)		NOT NULL,
	UsuarioAlta					VARCHAR(50)		NOT NULL,
	FechaAlta					SMALLDATETIME	NOT NULL,
	UsuarioModificacion			VARCHAR(50)		NOT NULL,
	FechaModificacion			SMALLDATETIME	NOT NULL
)

--DROP TABLE Usuarios
--DROP TABLE ImagenesAvancesProyectos
--DROP TABLE ImagenesProyectos
--DROP TABLE Proyectos