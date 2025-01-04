CREATE DATABASE ttrigger;
USE ttrigger;

-- TABLA EMPLEADOS
CREATE TABLE empleados (
    empID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL);

-- TABLA AUDITORIA
CREATE TABLE auditoria (
    audID INT PRIMARY KEY AUTO_INCREMENT,
    accion ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    empID INT NOT NULL,
    nombre VARCHAR(100),
    departamento VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha DATETIME NOT NULL);

-- CREACIO DEL TRIGGER INSERTAR 
DELIMITER //

CREATE TRIGGER auditoriaInsertar
AFTER INSERT ON empleados
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (accion, empID, nombre, departamento, salario, fecha)
    VALUES ('INSERT', NEW.empID, NEW.nombre, NEW.departamento, NEW.salario, NOW());
END //

DELIMITER ;
SHOW TRIGGERS;
-- CREACIO DEL TRIGGER ACTUALIZAR
DELIMITER //

CREATE TRIGGER auditoriaActualizar
AFTER UPDATE ON empleados
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (accion, empID, nombre, departamento, salario, fecha)
    VALUES ('UPDATE', NEW.empID, NEW.nombre, NEW.departamento, NEW.salario, NOW());
END //

DELIMITER ;

-- CREACIO DEL TRIGGER ELIMINAR
DELIMITER //

CREATE TRIGGER auditoriaEliminar
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
    INSERT INTO auditoria (accion, empID, nombre, departamento, salario, fecha)
    VALUES ('DELETE', OLD.empID, OLD.nombre, OLD.departamento, OLD.salario, NOW());
END //

DELIMITER ;

-- Para probar se inserttan datos a la tabla empleados
INSERT INTO empleados (empID, nombre, departamento, salario) VALUES 
	(100,'Diego Mullo', 'Jefatura', 5500.00),
    (101,'Justin Imbaquingo', 'Empleados', 485.00);

-- Actualizar sueldo
UPDATE empleados SET salario = 6000.00 WHERE empID = 100;

-- Eliminar a Justin :(
DELETE FROM empleados WHERE empID = 101;

-- Aqui se ve que tipo de trigger se utilizo, la fecha y los detalles
SELECT * FROM auditoria;


