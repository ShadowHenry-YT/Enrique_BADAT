CREATE DATABASE ventas;
USE ventas;

CREATE TABLE comercial (
cid NUMERIC(10) NOT NULL,
cnombre VARCHAR(100) NOT NULL,
capellido1 VARCHAR(100) NOT NULL,
capellido2 VARCHAR(100),
cciudad VARCHAR(100),
ccomision FLOAT,
CONSTRAINT PK_comercial PRIMARY KEY (cid)
);

CREATE TABLE cliente (
clid NUMERIC(10) NOT NULL,
clnombre VARCHAR (25),
clprimer_apellido VARCHAR(15) NOT NULL,
clciudad VARCHAR(100),
clcategoria NUMERIC(10),
CONSTRAINT PK_cliente PRIMARY KEY (clid)
);