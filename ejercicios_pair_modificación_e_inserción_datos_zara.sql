use tienda_zapatillas
-- EJERCICIO 1
-- En este ejercicio vamos a corregir los errores que hemos encontrado en nuestras tablas.
-- Tabla Zapatillas: Se nos ha olvidado introducir la marca y la talla de las zapatillas que tenemos en nuestra BBDD. Por lo tanto, debemos incluir:
-- marca: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula. talla: es un entero, no nulo.

ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL;

ALTER TABLE zapatillas
ADD COLUMN talla INT NOT NULL;

-- Tabla Empleados
-- salario: es un entero, no nulo. Pero puede que el salario de nuestros empleados tenga decimales, por lo que le cambiaremos el tipo a decima

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT;

-- Tabla Clientes
-- pais: la hemos incluido en la tabla pero nuestro negocio solo distribuye a España, por lo que es una columna que no hará falta. La eliminaremos.
 ALTER TABLE clientes
 DROP COLUMN pais;
 
 -- Tabla Facturas: total: madre mía!!! Se nos ha olvidado incluir el total de la cada factura generada😨!Creemos esa columna con un tipo de datos decimal.
 ALTER TABLE facturas
 ADD COLUMN total_facturas FLOAT;
 
-- EJERCICIO 2
 -- Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los siguientes datos:
 
 INSERT INTO zapatillas (id_zapatilla, modelo, color, marca, talla) VALUES (1, 'XQYUN', 'Negro', 'Nike', 42), (2, 'UOPMN', 'Rosas', 'Nike', 39), (3, 'OPNYT', 'Verdes', 'Adidas', 35);
INSERT INTO empleados (id_empleados, nombre, tienda, salario, fecha_incorporacion) VALUES (1, 'Laura', 'Alcobendas', 25.987, '2010-09-03'), (2, 'Maria', 'Sevilla', NULL, '2001-04-11'), (3, 'Ester', 'Oviedo', 30.16598, '2000-11-29');

UPDATE empleados
SET salario=30165.98
where id_empleados=3;

SELECT *
FROM empleados;

INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal) VALUES 
(1, 'Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Móstoles', 'Madrid', '28176'), 
(2, 'Lorena', '289345678','lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'), 
(3, 'Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra','23456');

INSERT INTO facturas (numero_factura, fecha, zapatilla_id, empleado_id, cliente_id, total_facturas) VALUES
(123, '2001-12-11', 1, 2, 1, 54.98),
(1234, '2005-05-23', 1, 1, 3, 89.91),
(12345, '2015-09-18', 2, 3, 3, 76.23);

SELECT *
FROM facturas;

