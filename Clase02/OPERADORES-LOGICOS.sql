-- OPERADORES LOGICOS
-- AND OR NOT

-- 1
-- Consultar los empleados que ingresaron a trabajar el primer 
-- trimestre del año 1981. Esquema SCOTT y HR

-- SCOTT

SELECT * FROM SCOTT.EMP
WHERE EXTRACT(YEAR FROM HIREDATE) = 1981
AND EXTRACT(MONTH FROM HIREDATE) IN (1,2,3);

-- RECURSOS

SELECT * FROM RECURSOS.EMPLEADO
WHERE EXTRACT(YEAR FROM FECINGRESO) = 2001
AND EXTRACT(MONTH FROM FECINGRESO) IN (1,2,3);


-- 2
-- Desarrollar una sentencia SELECT para consultar los empleados 
-- que su salario esta entre 3500.00 y 10000.00. Esquema HR.

-- 3
-- Desarrollar una sentencia SELECT para consultar los empleados 
-- de contabilidad cuyo sueldo e mayor a 10,000.00. Esquema HR.

-- 4
-- Desarrollar una sentencia SELECT para obtener un listado de 
-- los empleados que su nombre tiene en la segunda posición la 
-- letra "A" o la letra "O". Esquemas SCOTT y HR.

-- 5
-- Desarrollar una sentencia SELECT para obtener un listado de 
-- los productos de la categoría "LINEA BLANCA" y que su precio 
-- sea mayor a 1000.00. Esquema VENTAS.

-- 6
-- Desarrollar una sentencia SELECT para obtener un listado de 
-- los empleados de los departamentos de VENTAS y recursos humanos. 
-- Esquemas SCOTT y HR.


-- 7
-- Consultar los empleado que la segunda letra de su nombre puede 
-- ser A, O u I. Esquemas SCOTT y HR.