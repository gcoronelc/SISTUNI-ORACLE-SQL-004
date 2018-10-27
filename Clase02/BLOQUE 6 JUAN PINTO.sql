--BLOQUE 6

--MANIPULACIÓN DE VALORES NULOS

-- Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen profesor. Esquema EDUCA.

SELECT * FROM EDUCA.CURSO
WHERE CUR_PROFESOR IS NULL OR CUR_PROFESOR=' ';

SELECT * FROM EDUCA.CURSO
WHERE TRIM(CUR_PROFESOR) IS NULL; 


-- Desarrollar una sentencia SELECT para consultar el ingreso 
-- total de cada empleado. Esquema HR.

--RECURSOS
SELECT SUELDO+SUELDO*NVL(COMISION,0) INGRESO_TOTAL FROM RECURSOS.EMPLEADO;


-- Desarrollar una sentencia SELECT para consultar los empleados 
-- cuyos ingresos totales es menor a 8,000.00. 
-- Esquema HR.
SELECT SUELDO+SUELDO*NVL(COMISION,0) INGRESO_TOTAL FROM RECURSOS.EMPLEADO
WHERE SUELDO+SUELDO*NVL(COMISION,0) <8000;

-- Consultar los empleados cuyo ingreso (salario + comisión) supera los 3500.00. 
-- Esquema SCOTT y HR.
-- RECURSOS
SELECT SUELDO+SUELDO*NVL(COMISION,0) INGRESO_TOTAL FROM RECURSOS.EMPLEADO
WHERE SUELDO+SUELDO*NVL(COMISION,0) > 3500;


-- SCOTT
SELECT SAL+SAL*NVL(COMM,0) INGRESO_TOTAL FROM SCOTT.EMP
WHERE SAL+SAL*NVL(COMM,0)> 3500;


