-- sentencia basicas
SELECT * FROM EDUCA.CURSO;
SELECT CUR_ID "CODIGO DE CURSO", CUR_NOMBRE "NOMBRE DE CURSO" FROM EDUCA.CURSO;

SELECT DUMMY "hola mundo" FROM DUAL;

SELECT avg(cur_precio) FROM CURSO;

SELECT count(*) FROM MATRICULA;

-- operadores de comparación
SELECT * FROM CURSO WHERE CUR_PRECIO >= 1000;

SELECT * FROM CURSO WHERE CUR_PRECIO <= 1000;

