CREATE DATABASE cavadorada
USE cavadorada;

CREATE TABLE Bodega(
	id      integer NOT NULL ,
	Nombre   varchar(100) NOT NULL ,
	Telefono varchar(50) NOT NULL ,
	Web      varchar(100) NOT NULL ,
constraint pk_Bodega PRIMARY KEY (id)
);

 CREATE TABLE Usuario(
	id integer NOT NULL auto_increment,
	Nombre    varchar(85) NOT NULL ,
	Apellido  varchar(85) NOT NULL ,
	DNI   varchar(45) NOT NULL Unique,
	Telefono  varchar(50) NOT NULL ,
	Correo    varchar(200) NOT NULL ,
	id_bodega integer NULL ,
constraint pk_Usuario PRIMARY KEY (id),
CONSTRAINT FK_1 FOREIGN KEY (id_bodega) REFERENCES Bodega (id)
);

CREATE TABLE Servicio(
	id integer NOT NULL auto_increment,
	Nombre      varchar(45) NOT NULL,
	Precio      float NOT NULL,
	Descripcion varchar(545) NOT NULL,
	Stock       integer NOT NULL ,
	Fecha       date NOT NULL ,
	Hora_Inicio time NOT NULL ,
	Hora_Fin    time NOT NULL ,
	id_bodega   integer NOT NULL ,
constraint pk_Servicio PRIMARY KEY (id),
CONSTRAINT FK_2 FOREIGN KEY (id_bodega) REFERENCES Bodega (id)
);

CREATE TABLE Producto(
	id          integer NOT NULL auto_increment,
	Nombre      varchar(45) NOT NULL ,
	Descripcion varchar(545) NOT NULL ,
	Stock       integer NOT NULL ,
	Precio      float NOT NULL ,
	id_bodega   integer NOT NULL ,
constraint pk_Producto PRIMARY KEY (id),
CONSTRAINT FK_3 FOREIGN KEY (id_bodega) REFERENCES Bodega (id)
);

CREATE TABLE Carrito(
	id          integer NOT NULL auto_increment,
	Cantidad    integer NOT NULL ,
	id_producto integer NOT NULL ,
	id_servicio integer NOT NULL ,
constraint pk_Carrito PRIMARY KEY (id),
CONSTRAINT FK_4 FOREIGN KEY (id_servicio) REFERENCES Servicio (id),
CONSTRAINT FK_5 FOREIGN KEY (id_producto) REFERENCES Producto (id)
);

CREATE TABLE Compra(
	id              integer NOT NULL ,
	Total           float NOT NULL ,
	PrecioEnvio     float NOT NULL ,
	PrecioDescuento float NOT NULL ,
	Impuesto        float NOT NULL ,
	fecha           datetime NOT NULL ,
	id_Carrito      integer NOT NULL ,
	id_Usuario      integer NOT NULL ,
constraint pk_Compra PRIMARY KEY (id),
CONSTRAINT FK_6 FOREIGN KEY (id_Carrito) REFERENCES Carrito (id),
CONSTRAINT FK_7 FOREIGN KEY (id_Usuario) REFERENCES Usuario (id)
);


