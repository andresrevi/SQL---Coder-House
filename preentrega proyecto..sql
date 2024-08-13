CREATE TABLE musicla;

CREATE TABLE ubicacion(
ID_ubi varchar(7) primary key,
provincia varchar(15),
localidad varchar(20),
cod_postal int
);

CREATE TABLE proveedores(
ID_provd int primary key auto_increment,
nombre varchar(40),
domicilio varchar(60),
ID_ubi varchar(7),
FOREIGN KEY (ID_ubi) REFERENCES ubicacion(ID_ubi)
);

CREATE TABLE articulo(
ID_prod int primary key auto_increment,
nombre varchar (50), 
marca varchar(50),
modelo varchar(50),
año int, 
tipo varchar(50),
estado varchar(15),
precio int,
proveedor int,
FOREIGN KEY (proveedor) REFERENCES proveedores(ID_provd)
);

CREATE TABLE cliente(
usuario varchar(40) primary key,
nombre varchar(40),
apellido varchar(40),
banda varchar(40),
instrumento varchar(20),
domicilio varchar(60),
ID_ubi varchar(7),
FOREIGN KEY (ID_ubi) REFERENCES ubicacion(ID_ubi)
);

CREATE TABLE pedidos(
cod_compra int primary key auto_increment,
producto int,
cliente varchar(40),
tipo_entrega varchar(40),
modo_de_pago varchar(40),
estado_de_compra varchar(40),
FOREIGN KEY (producto) REFERENCES articulo(ID_prod),
FOREIGN KEY (cliente) REFERENCES cliente(usuario)
);
