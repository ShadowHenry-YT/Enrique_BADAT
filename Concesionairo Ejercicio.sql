DROP DATABASE IF EXISTS concesionario;
CREATE DATABASE concesionario;
USE concesionario;

CREATE TABLE cliente (
dnicli VARCHAR(9) NOT NULL,
nombrecli VARCHAR(100),
ciudadcli VARCHAR(100),
telefcli NUMERIC(9),
CONSTRAINT PK_cliente PRIMARY KEY (dnicli)
);


CREATE TABLE concesionarios (
cifconcesi NUMERIC(10) NOT NULL,
nombrecon VARCHAR(45),
ciudad VARCHAR(45),
telefcon NUMERIC(9),
CONSTRAINT PK_concsionarios PRIMARY KEY (cifconcesi)
);

CREATE TABLE marca (
codmarca NUMERIC(15) NOT NULL,
nombremar VARCHAR (45),
sededmar VARCHAR (10),
CONSTRAINT PK_marca PRIMARY KEY (codmarca)
);

CREATE TABLE coches (
codcoche NUMERIC(5) NOT NULL,
codmarca NUMERIC(15) NOT NULL,
modelo VARCHAR (45),
potencia FLOAT,
numeplazas NUMERIC (1),
numepuertas NUMERIC (1),
color VARCHAR (10),
CONSTRAINT PK_coches PRIMARY KEY (codcoche),
CONSTRAINT FK_coches_marcas FOREIGN KEY (codmarca) REFERENCES marca (codmarca)
);

CREATE TABLE distribucion (
cifconcesi NUMERIC(10),
codcoche NUMERIC(5),
cantidad NUMERIC (5),
CONSTRAINT FK_distibucion_coche FOREIGN KEY (codcoche) REFERENCES coche (codcoche),
CONSTRAINT FK_distibucion_concesionarios FOREIGN KEY (cifconcesi) REFERENCES concesionarios (cifconcesi)
);

CREATE TABLE venta (
codventa NUMERIC(10) NOT NULL,
fecha DATE,
dnicli VARCHAR(9),
cifconcesi NUMERIC(10),
codcoche NUMERIC(5),
CONSTRAINT PK_venta PRIMARY KEY (codventa),
CONSTRAINT FK_venta_cliente FOREIGN KEY (dnicli) REFERENCES cliente (dnicli),
CONSTRAINT FK_venta_coche FOREIGN KEY (codcoche) REFERENCES coche (codcoche),
CONSTRAINT FK_venta_concesionarios FOREIGN KEY (cifconcesi) REFERENCES concesionarios (cifconcesi)
);