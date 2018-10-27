--05.- FUNCIONES DE FECHA Y HORA
-- alumnos: LOYOLA Y GONZALES
--Desarrollar una sentencia SELECT para consultar los empleados 
-- que ingresaron a la empresa un mes de Enero. Esquemas SCOTT y HR.

SELECT ENAME, TO_CHAR(HIREDATE,'DD/MM/YYYY') FECHA_INGRESO 
FROM SCOTT.EMP WHERE EXTRACT(MONTH FROM HIREDATE) = 1;

SELECT APELLIDO || ', '||NOMBRE AS EMPLEADO, TO_CHAR(FECINGRESO,'DD/MM/YYYY') AS FECHA 
FROM RECURSOS.EMPLEADO WHERE EXTRACT(MONTH FROM FECINGRESO) = 1

--Desarrollar una sentencia SELECT para consultar las matriculas del �ltimo mes. Esquema EDUCA.



SELECT * FROM EDUCA.MATRICULA 
WHERE EXTRACT(MONTH FROM MAT_FECHA) = (SELECT MAX(EXTRACT(MONTH FROM MAT_FECHA)) FROM EDUCA.MATRICULA);



--Consultar los empleados que ingresaron a trabajar el primer trimestre del a�o 1981. Esquema SCOTT y HR

SELECT * FROM SCOTT.EMP WHERE EXTRACT(YEAR FROM HIREDATE) = 1981 AND 
EXTRACT(MONTH FROM HIREDATE) IN (1,2,3); 

SELECT * FROM RECURSOS.EMPLEADO WHERE EXTRACT(YEAR FROM FECINGRESO) = 1981 AND 
EXTRACT(MONT