
--TAREA 2
--SE NECESITA SABER QUIENES SON LOS EMPLEADOS QUE TIENEN EL MENOR SALARIO POR DEPARTAMENTO

SELECT * FROM RECURSOS.EMPLEADO E
WHERE E.SUELDO = (SELECT MIN(SUELDO) FROM RECURSOS.EMPLEADO E2 WHERE E.IDDEPARTAMENTO=E2.IDDEPARTAMENTO GROUP BY E2.IDDEPARTAMENTO) ORDER BY E.IDDEPARTAMENTO