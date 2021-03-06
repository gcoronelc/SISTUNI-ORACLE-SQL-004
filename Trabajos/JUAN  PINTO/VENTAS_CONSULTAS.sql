--1 seleccionar las ventas realizadas por todos los vendedores
SELECT E.EMPLEADO_ID,E.NOMBRE,E.APELLIDO,NVL(VENTA_TOT,0) 
FROM EMPLEADO E LEFT JOIN (SELECT EMPLEADO_ID,SUM(TOTAL) VENTA_TOT FROM VENTA GROUP BY EMPLEADO_ID) V
ON E.EMPLEADO_ID = V.EMPLEADO_ID
WHERE DEPARTAMENTO_ID=1001
ORDER BY NVL(VENTA_TOT,0) DESC;

SELECT * FROM EMPLEADO WHERE DEPARTAMENTO_ID=1001;

--2 MOSTRAR LOS PRODUCTOS QUE NO TIENEN VENTAS
SELECT P.PRODUCTO_ID,P.PRODUCTO FROM PRODUCTO P 
LEFT JOIN (SELECT PRODUCTO_ID FROM DETALLE_VENTA GROUP BY PRODUCTO_ID ORDER BY PRODUCTO_ID) V
ON P.PRODUCTO_ID=V.PRODUCTO_ID
WHERE V.PRODUCTO_ID IS NULL
ORDER BY P.PRODUCTO_ID;



--3 MOSTRAR EL INGRESO TOTAL DE LOS EMPLEADOS PARA EL MES DE AGOSTO
SELECT E.APELLIDO,E.NOMBRE,E.SALARIO,TO_CHAR(E.SALARIO+(SUMAT*E.COMISION),'L99,999.00') INGRESO_TOTAL FROM EMPLEADO E 
JOIN (SELECT V.EMPLEADO_ID IDEMP,SUM(TOTAL)SUMAT FROM VENTA V WHERE TO_CHAR(V.FECHA_INGRESO,'MM')=08 GROUP BY V.EMPLEADO_ID)
ON E.EMPLEADO_ID=IDEMP
ORDER BY E.APELLIDO;



--4 MOSTRAR LOS EMPLEADOS CUYO INGRESO SE ENCUENTRA ENTRE 2000 Y 2500 SOLES
SELECT E.APELLIDO,E.NOMBRE,E.SALARIO,TO_CHAR(E.SALARIO+(SUMAT*E.COMISION),'L99,999.00') INGRESO_TOTAL FROM EMPLEADO E 
JOIN (SELECT V.EMPLEADO_ID IDEMP,SUM(TOTAL)SUMAT FROM VENTA V GROUP BY V.EMPLEADO_ID)
ON E.EMPLEADO_ID=IDEMP
WHERE (E.SALARIO+(SUMAT*E.COMISION)) BETWEEN 2000 AND 2500
ORDER BY E.APELLIDO;



--5 MOSTRAR LOS EMPELADOS QUE FUERON CONTRATADOS EL 2010
SELECT * FROM EMPLEADO WHERE TO_CHAR(FECHA_INGRESO,'YYYY')='2010';



--6 MOSTRAR LAS VENTAS DEL �LTIMO MES
SELECT * FROM VENTA WHERE 
TO_CHAR(FECHA_INGRESO,'MM')=(SELECT TO_CHAR(MAX(FECHA_INGRESO),'MM') FROM VENTA );



--7 MOSTRAR LOS EMPLEADOS QUE INGRESARON EL 3ER TRIMRSTRE DEL A�O 2008
SELECT * FROM EMPLEADO WHERE TO_CHAR(FECHA_INGRESO,'YYYY')='2008' 
AND TO_CHAR(FECHA_INGRESO,'MM') IN ('07','08','09');



--8 MOSTRAR EL MOYOR Y MENOR INGRESO DEL DEPARTAMENTO VENTAS EN JULIO DEL 2018
SELECT ROUND(MAX(E.SALARIO+(NVL(E.COMISION,0)*SUMAT)),2) MAX_INGRESO, 
MIN(E.SALARIO+(NVL(E.COMISION,0)*SUMAT)) MIN_INGRESO 
FROM EMPLEADO E JOIN 
(SELECT V.EMPLEADO_ID IDEMP,SUM(TOTAL)SUMAT FROM VENTA V 
WHERE TO_CHAR(V.FECHA_INGRESO,'MM-YYYY') ='07-2018' GROUP BY V.EMPLEADO_ID)
ON E.EMPLEADO_ID=IDEMP
WHERE E.DEPARTAMENTO_ID=1001;



--9 MOSTRAR EL SALARIO PROMEDIO DEL PERSONAL DE VENTAS QUE TIENE POR LO MENOS UNA VENTA 
SELECT ROUND(AVG(E.SALARIO + PROM_TOT*E.COMISION),2) INGRESO_PROM
FROM EMPLEADO E JOIN 
(SELECT V.EMPLEADO_ID IDEMP,AVG(TOTAL)PROM_TOT FROM VENTA V 
GROUP BY V.EMPLEADO_ID)
ON E.EMPLEADO_ID=IDEMP
where e.departamento_id=1001;


select avg(salario) from empleado


--10 MOSTAR LOS PRODUCTOS MAS VENDIDOS Y SUS CANTIDADES
select P.PRODUCTO_ID,PRODUCTO,CANT from producto p 
join (select D.producto_id pro_id, count(*) cant from DETALLE_VENTA D group by D.producto_id)
ON P.PRODUCTO_ID=PRO_ID;



--11 CUANTOS EMPLEADOS INGRESARON POR A�O Y POR DEPARTAMENTO
SELECT DEPARTAMENTO_ID,TO_CHAR(FECHA_INGRESO,'YYYY') A�O,COUNT(DEPARTAMENTO_ID) CANTIDAD
FROM EMPLEADO
GROUP BY DEPARTAMENTO_ID,TO_CHAR(FECHA_INGRESO,'YYYY')
ORDER BY DEPARTAMENTO_ID,TO_CHAR(FECHA_INGRESO,'YYYY');

SELECT * FROM EMPLEADO = 35;



--12 SE REQUIERE SABER LA LISTA DE VENDEDORES Y LA MONTO DE VENTAS REALIZADAS 
SELECT V.EMPLEADO_ID,SUM(V.TOTAL) TOTAL_VENTAS 
FROM VENTA V 
GROUP BY V.EMPLEADO_ID
ORDER BY TOTAL_VENTAS DESC;



--13 SE REQUIERE SABER CUALES SON LOS CLIENTES QUE TIENEN 3 A M�S COMPRAS
SELECT C.CLIENTE_ID,C.CLIENTE,CANT FROM CLIENTE C
JOIN (SELECT CLIENTE_ID,COUNT(1) CANT FROM VENTA  
GROUP BY CLIENTE_ID
HAVING COUNT(1)>=3) X
ON 
C.CLIENTE_ID=X.CLIENTE_ID;



--14 MOSTRAR PERSONAL QUE NO SON VENDEDORES
SELECT D.DEPTNO,D.DNAME,
E.EMPNO,E.ENAME,E.SAL
FROM SCOTT.DEPT D
RIGHT JOIN SCOTT.EMP E
ON D.DEPTNO=E.DEPTNO



--15- MOSTRAR LOS EMPLEADOS QUE NO SON DEL DEPARTAMENTO DE VENTAS
SELECT E.DEPARTAMENTO_ID,E.APELLIDO FROM EMPLEADO E
JOIN DEPARTAMENTO D
ON E.DEPARTAMENTO_ID=D.DEPARTAMENTO_ID
WHERE D.DEPARTAMENTO_ID NOT IN '1001';



--16 MOSTAR LAS VENTAS POR MES DEL A�O 2018
SELECT COUNT(*) TOTAL,
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),01,TOTAL,0)) "ENERO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),02,TOTAL,0)) "FEBRERO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),03,TOTAL,0)) "MARZO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),04,TOTAL,0)) "ABRIL",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),05,TOTAL,0)) "MAYO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),06,TOTAL,0)) "JUNIO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),07,TOTAL,0)) "JULIO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),08,TOTAL,0)) "AGOSTO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),09,TOTAL,0)) "SETIEMBRE",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),10,TOTAL,0)) "OCTUBRE",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),11,TOTAL,0)) "NOVIEMBRE",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),12,TOTAL,0)) "DICIEMBRE"
FROM VENTA
WHERE TO_CHAR(FECHA_INGRESO,'YYYY')='2018';



--17 MOSTRAR LAS VENTAS POR TIENDA Y MES DEL A�O 2018
SELECT TIENDA_ID,
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),01,TOTAL,0)) "ENERO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),02,TOTAL,0)) "FEBRERO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),03,TOTAL,0)) "MARZO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),04,TOTAL,0)) "ABRIL",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),05,TOTAL,0)) "MAYO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),06,TOTAL,0)) "JUNIO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),07,TOTAL,0)) "JULIO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),08,TOTAL,0)) "AGOSTO",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),09,TOTAL,0)) "SETIEMBRE",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),10,TOTAL,0)) "OCTUBRE",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),11,TOTAL,0)) "NOVIEMBRE",
          SUM(DECODE(TO_CHAR(FECHA_INGRESO,'MM'),12,TOTAL,0)) "DICIEMBRE"
FROM VENTA
WHERE TO_CHAR(FECHA_INGRESO,'YYYY')='2018' 
GROUP BY TIENDA_ID
ORDER BY TIENDA_ID;



--18 MOSTRAR EL PERSONAL QUE NO PERTENECE AL DEPARTAMENTO DE VENTAS
SELECT * FROM EMPLEADO 
WHERE DEPARTAMENTO_ID NOT IN (SELECT DEPARTAMENTO_ID FROM DEPARTAMENTO WHERE DEPARTAMENTO='Ventas');


--18.1 MOSTRAR LOS LA CATIDAD Y MONTO DE TODOS LOS TIPOS DE COCINA
SELECT V.PRODUCTO_ID,COUNT(1),SUM(SUB_TOTAL) FROM DETALLE_VENTA V JOIN (SELECT PRODUCTO_ID FROM PRODUCTO WHERE PRODUCTO LIKE 'COCI%' GROUP BY PRODUCTO_ID) P
ON P.PRODUCTO_ID=V.PRODUCTO_ID
GROUP BY V.PRODUCTO_ID;


--19 MOSTRAR TODOS LOS PRODUCTOS Y LAS CANTIDADES VENDIDAS
SELECT P.PRODUCTO_ID,P.PRODUCTO,NVL(CANTV,0) FROM 
PRODUCTO P LEFT JOIN (SELECT PRODUCTO_ID, COUNT(1) CANTV FROM DETALLE_VENTA GROUP BY PRODUCTO_ID) V 
ON P.PRODUCTO_ID=V.PRODUCTO_ID
ORDER BY NVL(CANTV,0) DESC;



--20 MOSTAR LAS MONTO Y NRO VENTAS POR TIENDA
SELECT T.TIENDA_ID,T.ZONA,TOT,CANT  FROM TIENDAS T
JOIN (SELECT TIENDA_ID,(SUM(TOTAL)) TOT,COUNT(*) CANT FROM VENTA GROUP BY TIENDA_ID) V
ON T.TIENDA_ID=V.TIENDA_ID
ORDER BY TOT DESC




SELECT * FROM CLIENTE;
SELECT * FROM TIENDAS;
SELECT * FROM DEPARTAMENTO;
SELECT * FROM EMPLEADO;
SELECT * FROM PRODUCTO;
SELECT * FROM DETALLE_VENTA;
SELECT * FROM VENTA;






