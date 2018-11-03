-- ===================================
-- SUBCONSULTAS
-- ===================================

-- SUBCONSULTA COMO ESCALAR

-- Ejemplo
-- En el esquema ventas, hacer un listado de 
-- los productos mas baratos.

SELECT p.*, SYSDATE fecha_consulta
FROM ventas.producto p
WHERE precio = (SELECT min(precio) FROM ventas.producto);



-- SUBCONSULTA COMO CONJUNTO

-- Ejemplo
-- Se necesita un listado de los departamentos que no
-- tienen empleado registrados.

SELECT * 
FROM recursos.DEPARTAMENTO
WHERE IDDEPARTAMENTO NOT IN 
	(SELECT distinct iddepartamento FROM recursos.EMPLEADO);

-- Tarea 2
-- Se necesita saber quies son los empleados
-- que tienen el menor salario por departamento.
-- Esquema RECURSOS.







-- SUBCONSULTA COMO TABLA DERIVADA

-- Ejemplo



