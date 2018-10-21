--Ejercicios Propuestos

-- Bloque 01 

-- Desarrolle una sentencia SELECT para consultar el id, nombre, apellido y email de todos los empleados. Esquemas SCOTT y HR.


SELECT 
	EMPNO "ID",
	ENAME "NOMBRE"
FROM scott.emp;

SELECT * FROM RECURSOS.EMPLEADO;

SELECT 
	IDEMPLEADO "ID",
	NOMBRE,
	APELLIDO,
	EMAIL
FROM RECURSOS.EMPLEADO;

-- Desarrolle una sentencia SELECT para consultar el id, nombre, dirección y email de todos los alumnos. Esquema EDUCA.

SELECT * FROM EDUCA.ALUMNO;

SELECT 
	ALU_ID "ID",
	ALU_NOMBRE "NOMBRE",
	ALU_DIRECCION "DIRECCION",
	ALU_EMAIL "EMAIL"
FROM EDUCA.ALUMNO;

-- Desarrolle una sentencia SELECT para consultar el id, nombre, precio y profesor de cada curso. Esquema EDUCA.

SELECT * FROM EDUCA.CURSO;

SELECT
	CUR_ID "ID",
	CUR_NOMBRE "NOMBRE",
	CUR_PRECIO "PRECIO", 
	CUR_PROFESOR "PROFESOR"
FROM EDUCA.CURSO;

-- Desarrolle una sentencia SELECT para consultar el id y nombre de todos los departamentos. Esquemas SCOTT y HR.

SELECT * FROM SCOTT.DEPT;

SELECT 
	DEPTNO "ID",
	DNAME "NOMBRE"
FROM SCOTT.DEPT;

SELECT * FROM RECURSOS.DEPARTAMENTO;

SELECT 
	IDDEPARTAMENTO "ID",
	NOMBRE
FROM RECURSOS.DEPARTAMENTO;

-- Desarrolle una sentencia SELECT para consultar el nombre, vacantes y precio de cada curso. Esquema EDUCA.

SELECT * FROM EDUCA.CURSO;

SELECT 
	CUR_NOMBRE "NOMBRE",
	CUR_VACANTES "VACANTES",
	CUR_PRECIO "PRECIO"
FROM EDUCA.CURSO;
