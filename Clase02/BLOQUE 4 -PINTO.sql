
Operadores Lógicos
Consultar los empleados que ingresaron a trabajar el primer trimestre del año 1981. Esquema SCOTT y HR

--SCOTT
SELECT * FROM SCOTT.EMP 
WHERE EXTRACT(YEAR FROM HIREDATE)=1981
AND EXTRACT(MONTH FROM HIREDATE) IN (1,2,3);

--RECURSOS

SELECT * FROM RECURSOS.EMPLEADO 
WHERE EXTRACT(YEAR FROM FEINGRESO)=2001
AND EXTRACT(MONTH FROM FEINGRESO) IN (1,2,3);


Desarrollar una sentencia SELECT para consultar los empleados que su salario esta entre 3500.00 y 10000.00. Esquema HR.
SELECT * FROM RECURSOS.EMPLEADO WHERE SUELDO>=3500 AND SUELDO<=10000;

Desarrollar una sentencia SELECT para consultar los empleados de contabilidad cuyo sueldo e mayor a 10,000.00. Esquema HR.
SELECT * FROM RECURSOS.EMPLEADO WHERE SUELDO>=10000 AND IDDEPARTAMENTO=(SELECT IDDEPARTAMENTO FROM DEPARTAMENTO WHERE NOMBRE='Contabilidad');

Desarrollar una sentencia SELECT para obtener un listado de los empleados que su nombre tiene en la segunda posición la letra "A" o la letra "O". Esquemas SCOTT y HR.
--SCOTT
SELECT * FROM SCOTT.EMP WHERE ENAME LIKE '_A%' OR ENAME LIKE '_O%';

--RECURSOS
SELECT * FROM RECURSOS.EMPLEADO WHERE NOMBRE LIKE '_a%' OR NOMBRE LIKE '_o%';


Desarrollar una sentencia SELECT para obtener un listado de los productos de la categoría "LINEA BLANCA" y que su precio sea mayor a 1000.00. Esquema VENTAS.
SELECT * FROM VENTAS.PRODUCTO WHERE PRECIO>=1000 AND IDCAT=(SELECT IDCAT FROM VENTAS.CATEGORIA WHERE NOMBRE='LINEA BLANCA');

Desarrollar una sentencia SELECT para obtener un listado de los empleados de los departamentos de VENTAS y recursos humanos. Esquemas SCOTT y HR.

--SCOTT
SELECT * FROM SCOTT.EMP 
WHERE DEPTNO=(SELECT DEPTNO FROM SCOTT.DEPT WHERE DNAME='SALES') 
OR
DEPTNO=(SELECT DEPTNO FROM SCOTT.DEPT WHERE DNAME='OPERATIONS');

--RECURSOS
SELECT * FROM RECURSOS.EMPLEADO 
WHERE IDDEPARTAMENTO=(SELECT IDDEPARTAMENTO FROM RECURSOS.DEPARTAMENTO WHERE NOMBRE='Ventas') 
OR
IDDEPARTAMENTO=(SELECT IDDEPARTAMENTO FROM RECURSOS.DEPARTAMENTO WHERE NOMBRE='Recursos Humanos');


Consultar los empleado que la segunda letra de su nombre puede ser A, O u I. Esquemas SCOTT y HR.

--SCOTT
SELECT * FROM SCOTT.EMP WHERE ENAME LIKE '_A%' OR ENAME LIKE '_O%' OR ENAME LIKE '_I%';


--RECURSOS
SELECT * FROM RECURSOS.EMPLEADO WHERE NOMBRE LIKE '_A%' OR NOMBRE LIKE '_O%' OR NOMBRE LIKE '_I%';