-- Operadores LIKE, BETWEEN, IN, IS NULL

-- 1
-- Desarrollar una sentencia SELECT que permita consultar 
-- los empleados cuya penúltima letra de su nombre es E. 
-- Esquema SCOTT y HR.

-- SCOTT

SELECT * FROM SCOTT.EMP 
WHERE ENAME LIKE '%E_';

-- RECURSOS

SELECT * FROM RECURSOS.EMPLEADO 
WHERE UPPER(NOMBRE) LIKE '%E_';

-- 2
-- Desarrollar una sentencia SELECT que permita consultar 
-- los empleados que su nombre finaliza con la letra "O". 
-- Esquema HR.


-- 3
-- Desarrollar una sentencia SELECT que permita consultar 
-- los empleados que su apellido tiene en la segunda 
-- posición la letra "A" o la letra "O". 
-- Esquemas SCOTT y HR.


-- 4
-- Desarrollar una sentencia SELECT que permita averiguar que 
-- empleados tienen un sueldo mayor de 3,000.0 y menor de 10,000.0. 
-- Esquemas SCOTT y HR.


-- 5
-- Desarrollar una sentencia SELECT que permita averiguar 
-- quiénes son los empleados de los departamentos de contabilidad, 
-- recursos humanos y ventas. 
-- Esquemas SCOTT y HR.

-- 6
-- Consultar los empleados del departamento de ventas que no 
-- tienen comisión. 
-- Esquemas SCOTT y HR.



