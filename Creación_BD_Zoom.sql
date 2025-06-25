CREATE SCHEMA ejercicio_3_promo_56_b;

USE ejercicio_3_promo_56_b;

CREATE TABLE empleadas(
id_empleada INT AUTO_INCREMENT,
salario FLOAT NOT NULL CHECK(salario>0),
nombre VARCHAR(25) NOT NULL,
pais VARCHAR(25),
PRIMARY KEY (id_empleada)
);

CREATE TABLE emp_proyectos (
    proyecto_id INT,
    empleada_id INT, -- esto se refiere al id de las empleadas
    PRIMARY KEY (proyecto_id, empleada_id),
    CONSTRAINT fk_empleadas -- alias que le damos a la restricción
        FOREIGN KEY (empleada_id) -- la columna de esta tabla que ha nacido en otra
        REFERENCES empleadas(id_empleada) -- donde nace la columna que es FK
        );