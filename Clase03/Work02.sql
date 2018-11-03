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

SELECT * 
FROM recursos.EMPLEADO
WHERE (IDDEPARTAMENTO,SUELDO) IN (
	SELECT IDDEPARTAMENTO, min(SUELDO)
	FROM recursos.EMPLEADO
	GROUP BY IDDEPARTAMENTO
);

-- SUBCONSULTA COMO TABLA DERIVADA

-- Ejemplo
-- Esquema RECURSOS
-- De cada departamento, se necesita saber 
-- la cantidad de empleados y su planilla.

SELECT D.IDDEPARTAMENTO, D.NOMBRE, T.EMPS, T.PLANILLA
FROM recursos.DEPARTAMENTO D
JOIN (
	SELECT IDDEPARTAMENTO, count(1) EMPS, sum(sueldo) PLANILLA
	FROM recursos.EMPLEADO
	GROUP BY IDDEPARTAMENTO ) T
ON D.IDDEPARTAMENTO = T.IDDEPARTAMENTO;


-- T3
-- Se necesita una consulta que permita obtener
-- la información resumen de el avance de las 
-- matriculas, del importe proyectado, el importe 
-- comprometido y el importe recaudado

/*

CODIGO     NOMBRE                   IMPORTE     IMPORTE
CURSO      CURSO    MATRICULADOS    PROYECTADO  COMPROMETIDO   RECAUDADO
------------------------------------------------------------------------------



------------------------------------------------------------------------------

*/

