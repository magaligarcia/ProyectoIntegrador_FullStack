CREATE DATABASE cava
USE cava;

CREATE TABLE Bodega (
Id Int NOT NULL,
Nombre varchar(50) NOT NULL,
Telefono varchar(50) NOT NULL,
Web varchar(100) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Usuarios (
Id Int NOT NULL,
Nombre varchar(50) NOT NULL,
Apellido varchar(50)NOT NULL,
DNI varchar(50) NOT NULL,
Telefono varchar(50) NOT NULL,
Corre varchar(100) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE servicio_producto(
Id Int NOT NULL,
Descripcion varchar(500) NOT NULL,
Stock int NOT NULL,
Precio float NOT NULL,
Bodega_Id int NOT NULL,
PRIMARY KEY (Id),
FOREIGN KEY (Bodega_Id) REFERENCES Bodega(Id)
);

CREATE TABLE Carrito (
Id int NOT NULL,
Precio_Envio float NOT NULL,
Cupon_Desc varchar(50) NOT NULL,
Precio float NOT NULL,
Telefono varchar(50) NOT NULL,
Id_Usuario int NOT NULL,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Usuario) REFERENCES Usuarios(Id)
);

CREATE TABLE Compra (
Id Int NOT NULL,
Monto_Abonado float NOT NULL,
Id_Carrito int NOT NULL,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Carrito) REFERENCES Carrito (Id)
);

CREATE TABLE Productos_Carrito (
Id_Carrito Int NOT NULL,
Id_Serv_Pro int NOT NULL,
FOREIGN KEY (Id_Serv_Pro) REFERENCES Servicio_Producto(Id),
FOREIGN KEY (Id_Carrito) REFERENCES Carrito(Id)
);
