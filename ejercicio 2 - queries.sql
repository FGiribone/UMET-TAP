

-- insercion de datos:

INSERT INTO `departamento` (`numero_departamento`, `nombre_departamento`, `presupuesto`) VALUES (14, 'Informática', 80000);
INSERT INTO `departamento` (`numero_departamento`, `nombre_departamento`, `presupuesto`) VALUES (77, 'Investigación', 40000);
INSERT INTO `departamento` (`numero_departamento`, `nombre_departamento`, `presupuesto`) VALUES (15, 'Gestión', 95000);
INSERT INTO `departamento` (`numero_departamento`, `nombre_departamento`, `presupuesto`) VALUES (37, 'Desarrollo', 65000);
INSERT INTO `departamento` (`numero_departamento`, `nombre_departamento`, `presupuesto`) VALUES (16, 'Comunicación', 75000);

INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (31096678, 'Juan', 'Lopez', 14);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (31096675, 'Martin', 'Zarabia', 77);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (34269854, 'Jose', 'velez', 77);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (41369852, 'Paula', 'Madariaga', 77);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (33698521, 'Pedro', 'Perez', 14);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (32698547, 'Mariana', 'Lopez', 15);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (42369854, 'Abril', 'Sanchez', 37);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (36125896, 'Marti', 'Julia', 14);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (36985471, 'Omar', 'Diaz', 15);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (32145698, 'Guadalupe', 'Perez', 77);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (32369854, 'Bernardo', 'pantera', 37);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (36125965, 'Lucia', 'Pesaro', 14);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (31236985, 'Maria', 'diamante', 14);
INSERT INTO `empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento`) VALUES (32698547, 'Carmen', 'barbieri', 16);


-- ejercicio 2.1 obtener los apellidos de los empleados
SELECT `apellidos` FROM `app_empleado`;

-- ejercicio 2.2 obtener los apellidos de los empleados sin repeticiones
SELECT DISTINCT `apellidos` FROM `app_empleado`;

-- ejercicio 2.3 obtener los datos de los empleados que tengan el apellido Lopez
SELECT *
FROM `app_empleado`
WHERE `apellidos` = 'Lopez';

-- ejercicio 2.4 obtener los datos de los empleados que tengan el apellido Lopez y los que tengan apellido Perez
SELECT *
FROM `app_empleado`
WHERE `apellidos` = 'Lopez' OR `apellidos` = 'Perez';

-- ejercicio 2.5 Obtener todos los datos de los empleados que trabajen en el departamento 14
SELECT *
FROM `app_empleado`
WHERE `numero_departamento_id` = 14;



-- ejercicio 2.6 Obtener todos los datos de los empleados que trabajen en el departamento 37 y 77

SELECT *
FROM `app_empleado`
WHERE `numero_departamento_id` = 14 or `numero_departamento_id` = 77;


SELECT *
FROM `app_empleado`
WHERE `numero_departamento_id` = 14 and `numero_departamento_id` = 77;


-- ejercicio 2.7 Obtener los datos de los empleados cuyo apellido comience con P
SELECT *
FROM `app_empleado`
WHERE `apellidos` LIKE 'P%';

-- ejercicio 2.8 Obtener el presupuesto total de todos los departamentos
SELECT SUM(`presupuesto`) FROM `app_departamento`;


-- Ejercicio 2.9 Obtener un listado completo de empleados, incluyendo por cada empleado los datos del empleado y de su departamento 
SELECT E.*,
D.* 
FROM `app_empleado` AS E 
INNER JOIN `app_departamento` AS D ON E.numero_departamento_id = D.numero_departamento;


-- Ejercicio 2.10 Obtener un listado completo de empleados, incluyendo el nombre y apellido del empleado junto al nombre y presupuesto de su departamento

 SELECT E.nombre, 
E.apellidos, D.nombre_departamento, 
D.presupuesto
 FROM `app_empleado` AS E 
INNER JOIN `app_departamento` AS D ON E.numero_departamento_id = D.numero_departamento;


-- Ejercicio 2.11 Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor de 60000 

SELECT E.nombre,
 E.apellidos 
FROM `app_empleado` AS E 
INNER JOIN `app_departamento` AS D ON E.numero_departamento_id = D.numero_departamento WHERE D.presupuesto > 60000;

-- Ejercicio 2.12:  Añadir un nuevo departamento: Calidad con un presupuesto de 40000 y código 11, añadir un empleado vinculado al departamento recién creado: Esther Vazquez, DNI 89267109


INSERT INTO `app_departamento` (`numero_departamento`, `nombre_departamento`, `presupuesto`)
VALUES (11, 'Calidad', 40000);

INSERT INTO `app_empleado` (`dni`, `nombre`, `apellidos`, `numero_departamento_id`)
VALUES (89267109, 'Esther', 'Vazquez', 11);


-- ejercicio 2.13: Aplicar un recorte presupuestario del 10% a todos los departamentos

UPDATE `app_departamento` SET `presupuesto` = `presupuesto` * 0.90

-- Ejercicio 2.14 Reasignar a los empleados del departamento de investigación (código 77) al departamento de informática (código 14) 
UPDATE `app_empleado` SET `numero_departamento_id` = 14 
WHERE `numero_departamento_id` = 77;


-- Ejercicio 2.15 Despedir a los empleados del departamento de informática (código 14) DELETE FROM `app_empleado` WHERE `numero_departamento_id` = 14;


-- Ejercicio 2.16 Despedir a los empleados que trabajen en departamentos con un presupuesto superior a 90000
DELETE FROM `app_empleado`
WHERE `numero_departamento_id` IN (
    SELECT `numero_departamento`
    FROM `app_departamento`
    WHERE `presupuesto` > 90000
);

