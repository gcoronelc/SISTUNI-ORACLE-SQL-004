--04.- MANIPULACIÓN DE VALORES NULOS
--Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen profesor. Esquema EDUCA.
SELECT * FROM EDUCA.CURSO WHERE CUR_PROFESOR IS NULL OR CUR_PROFESOR = ' ';
--Desarrollar una sentencia SELECT para consultar el ingreso total de cada empleado. Esquema HR.

SELECT NOMBRE, APELLIDO, SUELDO + NVL(COMISION,0) AS "TOTAL INGRESO"  FROM RECURSOS.EMPLEADO 

--Desarrollar una sentencia SELECT para consultar los empleados cuyos ingresos totales es menor a 8,000.00. Esquema HR.

SELECT NOMBRE, APELLIDO, SUELDO + NVL(COMISION,0) AS "TOTAL INGRESO"  FROM RECURSOS.EMPLEADO WHERE SUELDO + NVL(COMISION,0) < 8000

--Consultar los empleados cuyo ingreso (salario + comisión) supera los 3500.00. Esquema SCOTT y HR.

SELECT ENAME, SAL + NVL(COMM,0) AS "TOTAL INGRESO"  FROM SCOTT.EMP WHERE SAL + NVL(COMM,0) > 3500

SELECT NOMBRE, APELLIDO, SUELDO + NVL(COMISION,0) AS "TOTAL INGRESO"  FROM RECURSOS.EMPLEADO WHERE SUELDO + NVL(COMISION,0) > 3500

