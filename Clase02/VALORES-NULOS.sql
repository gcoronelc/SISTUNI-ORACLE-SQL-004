-- MANIPULACIÓN DE VALORES NULOS

SELECT 5 + NULL FROM DUAL;

SELECT '' AS ALGO FROM DUAL;

SELECT x.*, NVL(X.COMM, 1000) CON_NVL, 
	   NVL2(X.COMM,2000,3000) CON_NVL2
FROM scott.emp x;




-- 1
-- Desarrollar una sentencia SELECT que permita averiguar 
-- los cursos que aún no tienen profesor. 
-- Esquema EDUCA.

SELECT * FROM EDUCA.CURSO
WHERE TRIM(CUR_PROFESOR) IS NULL;

SELECT * FROM EDUCA.CURSO
WHERE NVL(TRIM(CUR_PROFESOR),' ') = ' ';


-- 2
-- Desarrollar una sentencia SELECT para consultar el 
-- ingreso total de cada empleado. 
-- Esquema HR.


-- 3
-- Desarrollar una sentencia SELECT para consultar los 
-- empleados cuyos ingresos totales es menor a 8,000.00. 
-- Esquema HR.


-- 4
-- Consultar los empleados cuyo ingreso (salario + comisión) 
-- supera los 3500.00. Esquema SCOTT y HR.

