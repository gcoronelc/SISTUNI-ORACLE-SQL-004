/*2. Desarrollar una sentencia SELECT para consultar los empleados 
que su salario esta entre 3500.00 y 10000.00. Esquema HR.*/

SELECT * FROM RECURSOS.EMPLEADO
WHERE SUELDO >= 3500 AND SUELDO<=10000


/*3. Desarrollar una sentencia SELECT para consultar los empleados 
de contabilidad cuyo sueldo e mayor a 10,000.00. Esquema HR.*/


SELECT * FROM RECURSOS.EMPLEADO
WHERE IDDEPARTAMENTO = 101 AND SUELDO >= 10000 


SELECT * FROM RECURSOS.DEPARTAMENTO


/*4 Desarrollar una sentencia SELECT para obtener un listado de los 
empleados que su nombre tiene en la segunda posición la letra "A" 
o la letra "O". 
Esquemas SCOTT y HR.*/

SELECT  * FROM SCOTT.EMP
WHERE subSTR(ENAME,2,1) = 'A' OR subSTR(ENAME,2,1) = 'O'


SELECT  * FROM RECURSOS.EMPLEADO
WHERE subSTR(NOMBRE,2,1) = 'A' OR subSTR(NOMBRE,2,1) = 'O'

--5 .Desarrollar una sentencia SELECT para obtener un listado 
-- de los productos de la categoría "LINEA BLANCA" y que su 
-- precio sea mayor a 1000.00. Esquema VENTAS.

SELECT * FROM VENTAS.PRODUCTO WHERE IDCAT = 501 AND PRECIO > 1000;

--6. Desarrollar una sentencia SELECT para obtener un listado de 
-- los empleados de los departamentos de VENTAS y recursos humanos. 
-- Esquemas SCOTT y HR.

SELECT * FROM SCOTT.EMP 
WHERE DEPTNO = 30 OR DEPTNO = 20;

SELECT * FROM RECURSOS.EMPLEADO 
WHERE IDDEPARTAMENTO = 103 OR IDDEPARTAMENTO = 106;


--7. Consultar los empleado que la segunda letra de su nombre 
-- puede ser A, O u I. Esquemas SCOTT y HR.

SELECT * FROM SCOTT.EMP 
WHERE SUBSTR(UPPER(ENAME),2,1) = 'A'  OR SUBSTR(UPPER(ENAME),2,1) = 'O' OR SUBSTR(UPPER(ENAME),2,1) = 'I'

SELECT * FROM RECURSOS.EMPLEADO WHERE SUBSTR(UPPER(NOMBRE),2,1) = 'A'  
OR SUBSTR(UPPER(NOMBRE),2,1) = 'O' OR SUBSTR(UPPER(NOMBRE),2,1) = 'I'


