CREATE DATABASE crearUsuarios;
USE crearUsuarios;

-- SUPER ADMINISTRADOR
CREATE USER 'diegomullo'@'localhost' IDENTIFIED BY 'Caballito27@.'; -- Se crea el usuario con su contraseña
GRANT CREATE, DROP ON *.* TO 'diegomullo'@'localhost'; -- Se define las caracteristicas del superadministrador

-- ADMINISTRADOR
CREATE USER 'kevinflores'@'localhost' IDENTIFIED BY 'Gordosilo@123!'; -- Se crea el usuario con su contraseña
GRANT CREATE USER, PROCESS ON *.* TO 'kevinflores'@'localhost';-- Se define las caracteristicas del administrador

-- CRUD
CREATE USER 'andypenia'@'localhost' IDENTIFIED BY 'Gambetero-10.'; -- Se crea el usuario con su contraseña
GRANT INSERT, UPDATE, DELETE ON *.* TO 'andypenia'@'localhost';-- Se define las caracteristicas para que el usuario pueda tener funcio0nes de crud

-- CRUD SIN PODER ELIMINAR 
CREATE USER 'josealvarez'@'localhost' IDENTIFIED BY 'Taylor27.@'; -- Se crea el usuario con su contraseña
GRANT INSERT, UPDATE ON *.* TO 'josealvarez'@'localhost'; -- Se define las caracteristicas para que el usuaior no tenga la opcion de eliminar registros

-- SOLO LECTURA
CREATE USER 'nicolemoran'@'localhost' IDENTIFIED BY 'PorroGalaktik.'; -- Se crea el usuario con su contraseña
GRANT SELECT ON *.* TO 'nicolemoran'@'localhost';-- Se define que el usuario solo pueda visualizar la informacion

-- APLICAR LOS CAMBIOS
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'diegomullo'@'localhost';
SHOW GRANTS FOR 'kevinflores'@'localhost';
SHOW GRANTS FOR 'andypenia'@'localhost';
SHOW GRANTS FOR 'josealvarez'@'localhost';
SHOW GRANTS FOR 'nicolemoran'@'localhost';