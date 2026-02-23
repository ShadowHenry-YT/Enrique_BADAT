SELECT user,host FROM mysql.user;

-- Apartado 1.2.2

-- Ejemplo 2

DROP DATABASE IF EXISTS prestashop;
CREATE DATABASE prestashop CHARACTER SET utf8mb4;
USE prestashop;
DROP USER IF EXISTS 'user'@'localhost';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON prestashop.* TO 'user'@'localhost';
FLUSH PRIVILEGES;

-- Ejemplo 3

DROP DATABASE IF EXISTS prestashop;
CREATE DATABASE prestashop CHARACTER SET utf8mb4;
USE prestashop;
DROP USER IF EXISTS 'user'@'localhost';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE ON prestashop.* TO 'user'@'localhost';
FLUSH PRIVILEGES;

-- Ejemplo 4

DROP DATABASE IF EXISTS prestashop;
CREATE DATABASE prestashop CHARACTER SET utf8mb4;
USE prestashop;
DROP USER IF EXISTS 'user'@'localhost';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON prestashop.* TO 'user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Ejemplo 5

GRANT SELECT ON prestashop.customer TO 'user'@'localhost' WITH GRANT OPTION;

-- Apartado 1.2.3

REVOKE INSERT, UPDATE, DELETE ON prestashop.* FROM 'user'@'localhost';
FLUSH PRIVILEGES;

-- Apartado 1.3

DROP ROLE IF EXISTS 'rol_lectura_escritura', 'rol_lectura', 'rol_escritura';
CREATE ROLE 'rol_lectura_escritura', 'rol_lectura', 'rol_escritura';
GRANT ALL ON base_de_datos.* TO 'rol_lectura_escritura';
GRANT SELECT ON base_de_datos.* TO 'rol_lectura';
GRANT INSERT, UPDATE, DELETE ON base_de_datos.* TO 'rol_escritura';
DROP USER IF EXISTS admin;
CREATE USER admin@'localhost' IDENTIFIED BY 'password1';
DROP USER IF EXISTS usuario_lectura_1;
CREATE USER usuario_lectura_1@'localhost' IDENTIFIED BY 'password2';
DROP USER IF EXISTS usuario_lectura_2;
CREATE USER usuario_lectura_2@'localhost' IDENTIFIED BY 'password3';
DROP USER IF EXISTS usuario_escritura_1;
CREATE USER usuario_escritura_1@'localhost' IDENTIFIED BY 'password4';
DROP USER IF EXISTS usuario_escritura_2;
CREATE USER usuario_escritura_2@'localhost' IDENTIFIED BY 'password5';
GRANT 'rol_lectura_escritura' TO admin@'localhost';
GRANT 'rol_lectura' TO usuario_lectura_1@'localhost', usuario_lectura_2@'localhost';
GRANT 'rol_escritura' TO usuario_escritura_1@'localhost', usuario_escritura_2@'localhost';
