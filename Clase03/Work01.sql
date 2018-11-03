
-- COMBINACIONES EXTERNAS

SELECT 
	cat.IDCAT, cat.NOMBRE categoria,
	pro.IDPROD, pro.NOMBRE producto,
	pro.PRECIO, pro.STOCK
FROM ventas.CATEGORIA cat
LEFT JOIN ventas.PRODUCTO pro 
ON cat.IDCAT = pro.IDCAT;

INSERT INTO SCOTT.DEPT(DEPTNO, DNAME, LOC)
VALUES(66,'JAVA', 'UNI');

INSERT INTO SCOTT.DEPT(DEPTNO, DNAME, LOC)
VALUES(67,'ORACLE', 'UNI');

COMMIT;

SELECT 
	D.DEPTNO, D.DNAME,
	E.EMPNO, E.ENAME, E.SAL
FROM SCOTT.DEPT D
FULL JOIN SCOTT.EMP E
ON D.DEPTNO = E.DEPTNO
ORDER BY 1;


-- SELFT JOIN
-- De scott, necesitas tener un listado de los trabajadores
-- y su respetivo jefe.


SELECT 
	e.EMPNO, e.ENAME,
	m.EMPNO mcode, m.ENAME mname
FROM scott.emp e
JOIN scott.emp m
ON e.MGR = m.EMPNO;











