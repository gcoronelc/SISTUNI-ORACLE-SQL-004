--Selección de Columnas:
------------------------
--Desarrolle una sentencia SELECT para consultar el id, nombre, apellido y email de todos los empleados. Esquemas SCOTT y RECURSOS
SELECT idempleado "ID", nombre, apellido, email FROM  RECURSOS.EMPLEADO;
SELECT * FROM  SCOTT.EMP;
SELECT ENAME "NOMBRE" FROM SCOTT.EMP;

--Desarrolle una sentencia SELECT para consultar el id, nombre, dirección y email de todos los alumnos. Esquema EDUCA.

SELECT ALU_ID "ID", ALU_NOMBRE "NOMBRE", ALU_DIRECCION "DIRECCION", ALU_EMAIL "EMAIL" FROM EDUCA.ALUMNO;
--Desarrolle una sentencia SELECT para consultar el id y nombre de todos los departamentos. Esquemas SCOTT y HR.

SELECT DEPTNO "ID", DNAME "NOMBRE" FROM SCOTT.DEPT;
---Desarrolle una sentencia SELECT para consultar el nombre, vacantes y precio de cada curso. Esquema EDUCA.
SELECT CUR_NOMBRE "NOMBRE", CUR_VACANTES "VACANTES", CUR_PRECIO "PRECIO" FROM EDUCA.CURSO