-- MANIPULACI�N DE VALORES NULOS

SELECT 5 + NULL FROM DUAL;

SELECT '' AS ALGO FROM DUAL;


-- 1
-- Desarrollar una sentencia SELECT que permita averiguar 
-- los cursos que a�n no tienen profesor. 
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
-- Consultar los empleados cuyo ingreso (salario + comisi�n) 
-- supera los 3500.00. Esquema SCOTT y HR.

