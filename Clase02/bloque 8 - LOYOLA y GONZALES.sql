-- FUNCIONES AGREGADAS
-- 1. Desarrolle una sentencia SELECT para calcular el importe 
-- de la planilla del departamento de ventas. 
-- Debe incluir el sueldo y la comisión. 
-- Esquemas SCOTT y HR.

SELECT SUM( NVL(SAL,0))  AS "PLANILLA VENTAS" FROM SCOTT.EMP WHERE DEPTNO = 30;

SELECT SUM( NVL(SUELDO,0)) AS "PLANILLA VENTAS" 
FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO = 103;

-- 2. Desarrolle una sentencia SELECT para encontrar 
-- el mayor y menor sueldo en el departamento de ventas. 
-- Esquema SCOTT y RH.

SELECT MAX(SAL) AS "SUELDO MAYOR", MIN(SAL) AS "SUELDO MÍNIMO" 
FROM  SCOTT.EMP WHERE DEPTNO = 30;

SELECT MAX(SUELDO) AS "SUELDO MAYOR", MIN(SUELDO) AS "SUELDO MINIMO" 
FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO = 103;


-- 3. Desarrolle una sentencia SELECT para encontrar el salario 
-- promedio en la empresa. 
-- Esquemas SCOTT y RH.

SELECT ROUND(AVG(SAL),3) AS "SUELDO PROMEDIO" FROM  SCOTT.EMP
WHERE SAL IS NOT NULL; 
 
SELECT ROUND(AVG(SUELDO),3) AS "SUELDO PROMEDIO" FROM  RECURSOS.EMPLEADO;

-- 4. Se necesita saber la cantidad de empleados que hay en el departamento de ventas. 
-- Esquemas SCOTT y RH.

SELECT COUNT(*) AS "NRO DE EMPLEADOS VENTAS " FROM  SCOTT.EMP WHERE DEPTNO = 30; 

SELECT COUNT(*) AS "NRO DE EMPLEADOS VENTAS " FROM  RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO = 103;
 
 
-- 5. Se necesita saber el importe de la planilla del departamento de ventas, 
-- con comisión y sin comisión. 
-- Esquemas SCOTT y RH.

SELECT SUM( NVL(SAL,0))  AS "PLANILLA VENTAS SIN COMISION", 
SUM( NVL(SAL,0)) + SUM( NVL(COMM,0)) AS "PLANILLA VENTAS CON COMISION"  
FROM SCOTT.EMP WHERE DEPTNO = 30;

SELECT SUM( NVL(SUELDO,0)) AS "PLANILLA VENTAS SIN COMISION", 
SUM( NVL(SUELDO,0)) + SUM( NVL(COMISION,0)) AS "PLANILLA VENTAS CON COMISION"  
FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO = 103;

-- 6. Del curso SQL Server Administración se necesita saber la cantidad de 
-- alumnos matriculados y a cuánto asciende el importe que se proyecta 
-- recaudar hasta el momento. Esquema EDUCA.

SELECT 
	COUNT(*) AS "CANTIDAD DE MATRICULADOS", 
	SUM(NVL(MAT_PRECIO,0)) AS "IMPORTE A RECAUDAR" 
FROM EDUCA.MATRICULA WHERE CUR_ID = 2;


-- 7. Se necesita saber cuál es el importe recaudado hasta el momento del 
-- curso SQL Server Administración. Esquema EDUCA.

-- CORREGIR
SELECT cur_nombre, cur_matriculados, (cur_matriculados * cur_precio) Total_Recaudado
FROM educa.CURSO
WHERE cur_nombre='SQL Server Administración';

