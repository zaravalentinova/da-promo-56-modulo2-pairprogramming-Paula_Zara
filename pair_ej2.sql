 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
 CREATE TABLE zapatillas(
	id_zapatilla INT AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_zapatilla)
    );
    
CREATE TABLE clientes(
	id_cliente INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NOT NULL,
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_cliente)
    );
    
    CREATE TABLE empleados(
		id_empleados INT AUTO_INCREMENT NOT NULL,
		nombre VARCHAR(45) NOT NULL,
		tienda VARCHAR(45) NOT NULL,
		salario INT NOT NULL,
		fecha_incorporacion DATE NOT NULL,
		PRIMARY KEY (id_empleados)
    );
    
    CREATE TABLE facturas(
		id_facturas INT AUTO_INCREMENT NOT NULL,
        numero_factura INT NOT NULL,
        fecha DATE NOT NULL,
        zapatilla_id INT NOT NULL,
        empleado_id INT NOT NULL,
        cliente_id INT NOT NULL,
        PRIMARY KEY (id_facturas),
        CONSTRAINT fk_factura_empleado
			FOREIGN KEY (empleado_id)
			REFERENCES empleados(id_empleados),
		CONSTRAINT fk_factura_zapatilla
			FOREIGN KEY (zapatilla_id)
            REFERENCES zapatillas(id_zapatilla),
		CONSTRAINT fk_factura_cliente
			FOREIGN KEY (cliente_id)
            REFERENCES clientes(id_cliente)
            );
	
        
    