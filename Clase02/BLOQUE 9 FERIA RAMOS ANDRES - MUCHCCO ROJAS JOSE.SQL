--8

SELECT * FROM scott.dept;
SELECT * FROM scott.emp ;

SELECT deptno AS Departamento, ROUND(avg(sal)) AS PromedioDeSueldos 
FROM scott.emp GROUP BY deptno

SELECT * FROM recursos.departamento;
SELECT * FROM recursos.empleado;

SELECT IDDEPARTAMENTO AS Departamento, ROUND(avg(SUELDO)) AS PromedioDeSueldos 
FROM recursos.empleado GROUP BY IDDEPARTAMENTO ORDER BY DEPARTAMENTO;

--9

-- DE PAGO, CORREGIR

SELECT * FROM curso;

SELECT CUR_NOMBRE, sum(cur	_matriculados*cur_precio) AS Recaudacion 
FROM educa.CURSO GROUP BY CUR_NOMBRE ORDER BY RECAUDACION DESC

SELECT * FROM EDUCA.PAGO;


--10
SELECT * FROM scott.dept;
SELECT * FROM scott.emp ;
SELECT 
	DEPTNO, 
	MAX(SAL) AS SUELDO_MAXIMO, 
	MIN(SAL) AS SUELDO_MINIMO, 
	ROUND(AVG(SAL)) AS PROMEDIO_DE_SUELDOS 
FROM scott.emp 
GROUP BY deptno;


SELECT * FROM recursos.departamento;
SELECT * FROM recursos.empleado;
SELECT 
	IDDEPARTAMENTO, 
	MAX(SUELDO) AS SUELDO_MAXIMO, 
	MIN(SUELDO) AS SUELDO_MINIMO, 
	ROUND(AVG(SUELDO)) AS PROMEDIO_DE_SUELDOS 
FROM recursos.empleado 
GROUP BY IDDEPARTAMENTO;


--11)
--A). Se necesita saber cuántos empleados hay por departamento. Esquemas SCOTT
SELECT DEPTNO,COUNT(ENAME) AS CANTIDAD FROM SCOTT.EMP GROUP BY DEPTNO;

--B). Se necesita saber cuántos empleados hay por departamento. Esquemas RECURSOS

SELECT IDDEPARTAMENTO,COUNT(NOMBRE) FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO;

-- 12)A). Se necesita saber cuántos empleados han ingreso por año en cada 
-- departamento.Esquemas SCOTT 

-- ES POR AÑO, CORREGIR

SELECT NVL(DEPTNO,0) AS DEPARTAMENTO,HIREDATE,COUNT(ENAME) AS CANTIDAD 
FROM SCOTT.EMP GROUP BY HIREDATE,DEPTNO;


-- b)2. Se necesita saber cuántos empleados han ingreso por año en cada departamento.
-- Esquemas RECURSOS

-- CORREGIR
SELECT IDDEPARTAMENTO AS DEPARTAMENTO,FECINGRESO,COUNT(NOMBRE) AS CANTIDAD  
FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO,FECINGRESO;


-- 13). De cada departamento se necesita saber la cantidad de empleados, 
-- el importe de la planilla y el sueldo promedio. 
-- Esquemas SCOTT 

SELECT 
	NVL(DEPTNO,0),
	COUNT(ENAME),
	SUM(NVL(SAL,0)+NVL(COMM,0)) AS IMPORTE, 
	ROUND(AVG(NVL(SAL,0))) AS PROMEDIO 
FROM SCOTT.EMP 
GROUP BY NVL(DEPTNO,0);

-- De cada departamento se necesita saber la cantidad de empleados, el importe de la planilla y el sueldo promedio. Esquemas RECURSOS
SELECT * FROM RECURSOS.EMPLEADO;

SELECT 
	IDDEPARTAMENTO,
	COUNT(NOMBRE),
	SUM(SUELDO+NVL(COMISION,0)) AS IMPORTE, 
	ROUND(AVG(SUELDO)) AS PROMEDIO 
FROM RECURSOS.EMPLEADO 
GROUP BY IDDEPARTAMENTO;

--14
SELECT * FROM curso;
SELECT * FROM EDUCA.MATRICULA;

SELECT 
	CUR_NOMBRE, 
	COUNT(CUR_MATRICULADOS) AS Cant_Matriculados, 
	sum(cur_matriculados*cur_precio) AS Recaudacion 
FROM educa.CURSO 
GROUP BY CUR_NOMBRE 
ORDER BY recaudacion DESC
