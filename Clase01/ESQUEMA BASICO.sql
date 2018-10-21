-- ===============================================================
-- ESQUEMA BASICO
-- ===============================================================
  
-- Crear el usuario

CREATE USER DEMO IDENTIFIED BY admin;

GRANT CONNECT, RESOURCE TO DEMO;  
  
  
-- Crear un objeto

CREATE TABLE DEMO.MENSAJE(
	DE VARCHAR2(50),
	PARA VARCHAR2(50),
	MENSAJE VARCHAR2(200)
);


-- INSERTAR FILAS

INSERT INTO DEMO.MENSAJE(DE,PARA,MENSAJE)
VALUES( 'PROFE', 'TODOS', 'ORACLE ES LO MAXIMO' );

SELECT * FROM DEMO.MENSAJE;

COMMIT;



