DROP DATABASE IF EXISTS instituto;
CREATE DATABASE instituto;
USE instituto;

CREATE TABLE profesor (
 codigoPro NUMERIC(10) NOT NULL,
 nombrePro VARCHAR(45),
 CONSTRAINT PK_profesor PRIMARY KEY (codigoPro)
);

CREATE TABLE modulo (
 codigoMod NUMERIC(10) NOT NULL,
 nombreMod VARCHAR(45),
 codigoPro NUMERIC(10) NOT NULL,
 CONSTRAINT PK_modulo PRIMARY KEY (codigoMod),
 CONSTRAINT FK_modulo_profesor FOREIGN KEY (codigoPro) REFERENCES profesor (codigoPro)
);

CREATE TABLE matricula (
 numeMatri NUMERIC(10) NOT NULL,
 codigoMod NUMERIC(10) NOT NULL,
 nota NUMERIC(10), 
 CONSTRAINT PK_matricula PRIMARY KEY (numeMatri),
 CONSTRAINT FK_matricula_modulo FOREIGN KEY (codigoMod) REFERENCES modulo (codigoMod)
);

CREATE TABLE alumno (
 numeMatri NUMERIC(10) NOT NULL,
 nombreAlu VARCHAR(45),
 CONSTRAINT PK_alumno PRIMARY KEY (numeMatri),
 CONSTRAINT FK_alumno_matricula FOREIGN KEY (numeMatri) REFERENCES matricula(numeMatri)
);