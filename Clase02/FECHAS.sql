-- FUNCIONES DE FECHA Y HORA

SELECT X.*, 
	TO_CHAR(HIREDATE,'DD/MM/YYYY HH:MI:SS') FECHA
FROM SCOTT.EMP X;

INSERT INTO SCOTT.EMP(EMPNO,ENAME, HIREDATE)
VALUES(4444, 'GUSTAVO', TO_DATE('15/01/2018','DD/MM/YYYY'));

COMMIT;


-- 1
-- Desarrollar una sentencia SELECT para consultar los 
-- empleados que ingresaron a la empresa un mes de Enero. 
-- Esquemas SCOTT y HR.


-- 2
-- Desarrollar una sentencia SELECT para consultar las matriculas 
-- del último mes. Esquema EDUCA.

WITH 
V1 AS (
	SELECT MAX(MAT_FECHA) FECHA
	FROM EDUCA.MATRICULA
)
SELECT * FROM EDUCA.MATRICULA 
WHERE EXTRACT(MONTH FROM MAT_FECHA) = (SELECT EXTRACT(MONTH FROM FECHA) FROM V1)
AND EXTRACT(YEAR FROM MAT_FECHA) = (SELECT EXTRACT(YEAR FROM FECHA) FROM V1);




-- 3
-- Consultar los empleados que ingresaron a trabajar el primer 
-- trimestre del año 1981. Esquema SCOTT y HR



