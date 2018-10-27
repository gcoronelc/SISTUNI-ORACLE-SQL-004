-- 1
-- Desarrollar una sentencia SELECT para consultar los empleados 
-- del departamento de contabilidad. Esquemas SCOTT y RECURSOS.

-- SCOTT

SELECT * FROM SCOTT.DEPT;
-- CONTABILIDAD = 10

SELECT * FROM SCOTT.EMP WHERE DEPTNO = 10;


-- RECURSOS

SELECT * FROM RECURSOS.DEPARTAMENTO;
-- CONTABILIDAD = 101

SELECT * FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO = 101;


-- 2
-- Desarrolle una sentencia SELECT para consultar los cursos 
-- que no tienen alumnos matriculados. Esquema EDUCA.

-- 3
-- Desarrollar una sentencia SELECT para consultar los productos 
-- que su precio en mayor a 50 Soles. Esquema VENTAS.



-- 4
-- Desarrollar una sentencia SELECT para consultar los empleados 
-- que su salario en mayor a 3000.00. Esquema HR.



-- 5
-- Desarrollar una sentencia SELECT para consultar las cuentas 
-- en SOLES. Esquema EUREKA.



