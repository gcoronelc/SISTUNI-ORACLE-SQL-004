-- =================================================
-- CONSULTAS SIMPLES
-- =================================================


SELECT * FROM EDUCA.CURSO;

SELECT 
	CUR_ID "CODIGO",
	CUR_NOMBRE "NOMBRE",
	CUR_VACANTES "VACANTES",
	CUR_PRECIO "PRECIO"
FROM EDUCA.CURSO;

SELECT 
	CUR_ID "CODIGO",
	CUR_NOMBRE "NOMBRE",
	CUR_VACANTES "VACANTES",
	CUR_PRECIO "PRECIO",
	CUR_VACANTES * CUR_PRECIO "INGRESOS PLANIFICADOS"
FROM EDUCA.CURSO;

-- =================================================
-- TABLA DUAL
-- Se utiliza para evaluar expresiones, funciones.
-- =================================================

SELECT 56*34 VALOR FROM DUAL;

SELECT UPPER('hola todos') "HOLA" FROM DUAL;


-- =================================================
-- FILTROS
-- =================================================

-- Operadores de comparación

SELECT * FROM educa.curso
WHERE cur_precio > 1000;

SELECT * FROM educa.curso
WHERE cur_precio <= 1000;


-- Operadores logicos

SELECT * FROM recursos.empleado
WHERE iddepartamento = 102 AND sueldo < 3000;

SELECT * FROM recursos.empleado
WHERE iddepartamento = 102 AND sueldo >= 3000;

-- Ejercicios Propuestos
-- http://gcoronelc.blogspot.com/2018/09/oracle-sql-consultas-una-tabla.html
-- 01.- CONSULTAS A UNA TABLA
-- Bloque 01: Selección de Columnas
-- Bloque 02: Campos Calculados

