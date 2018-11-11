-- =============================================
-- CRACIÓN DEL USUARIO
-- =============================================

DECLARE
	N INT;
	COMMAND VARCHAR2(200);
BEGIN
	COMMAND := 'DROP USER PRODUCCION CASCADE';
	SELECT COUNT(*) INTO N
	FROM DBA_USERS
	WHERE USERNAME = 'PRODUCCION';
	IF ( N = 1 ) THEN
		EXECUTE IMMEDIATE COMMAND;
	END IF;
END;
/


CREATE USER PRODUCCION IDENTIFIED BY admin;

GRANT CONNECT, RESOURCE TO PRODUCCION;

ALTER USER PRODUCCION
QUOTA UNLIMITED ON USERS;

GRANT CREATE VIEW TO PRODUCCION;

-- =============================================
-- CONECTARSE A LA APLICACIÓN
-- =============================================

CONNECT PRODUCCION/admin

-- ======================================================
-- TABLA CLIENTE
-- ======================================================

CREATE TABLE CLIENTE
( 
	IdCliente            INT  NOT NULL ,
	cli_nombre           varchar2(100)  NOT NULL ,
	cli_apellidopat      varchar2(100)  NOT NULL ,
	cli_apellidomat      varchar2(100)  NOT NULL ,
	cli_sexo 	     varchar2(1)   NULL,
	cli_email            varchar2(50)   NOT NULL ,  	
	telefono             VARCHAR2(20) NULL ,
	CONSTRAINT  PK_CLIENTE PRIMARY KEY (IdCliente) 
);

--INSERT DATOS 

CREATE SEQUENCE SQ_CLIENTE
INCREMENT BY 1
START WITH 1;

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES(SQ_CLIENTE.NEXTVAL,'CLAUDIA','RAMOS','RUIZ','cramos@gmail.com',NULL);

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES(SQ_CLIENTE.NEXTVAL,'ANGELICA','TORRES','LOPEZ','atorres@gmail.com','967345634');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES(SQ_CLIENTE.NEXTVAL,'KARLA','GUTIERREZ','PEREZ','kgutierrez@gmail.com','995466783');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES(SQ_CLIENTE.NEXTVAL,'LEONOR','CARRASCO','POMA','lcarrasco@gmail.com','986754373');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE,'YESENIA','VIRHUEZ','ZAPATA','986412345','yesenia@hotmail.com');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'OSCAR','ALVARADO','FERNANDEZ','oscar@gmail.com','985485695');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'GLADYS','REYES','CORTIJO','gladys@hotmail.com',NULL);

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'SARA','RIEGA','FRIAS','sara@yahoo.com','956564554');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'JHON','VELASQUEZ','DEL CASTILLO','jhon@movistar.com','978645345');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'RODRIGUEZ','ROJAS','ROJAS','rrodrigiez@gmail.com','967346525');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'CALERO','MORALES','DAVILA','ecalero@peru.com','989675462');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'KAREN','FUENTES','MARTINEZ','KAFUENTES@HOTMAIL.COM',NULL);

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES( SQ_CLIENTE.NEXTVAL,'YANINA','RUIZ','BANCES','yami_ruiz@gmail.com','965842545');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES(SQ_CLIENTE.NEXTVAL,'MARIA','DIAZ','VELASQUEZ','6573456','mvelasques@gmail.com','932541254');

INSERT INTO CLIENTE (IdCliente, cli_nombre, cli_apellidopat, cli_apellidomat, cli_email,telefono )
VALUES(SQ_CLIENTE.NEXTVAL,'FIORELLA','VITELLA','REYES','fvitela@outlook.com','954687904');

commit;

-- ======================================================
-- TABLA MESA
-- ======================================================

CREATE TABLE MESA
( 
	IdMesa              INT NOT NULL ,
	NumMaxComensales    INT NOT NULL ,
	Ubicacion           varchar2(100)  NOT NULL,
  CONSTRAINT  PK_MESA PRIMARY KEY (IdMesa) 
);

--INSERT DATOS

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(1,5,'PRIMER PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(2,5,'PRIMER PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(3,5,'PRIMER PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(4,5,'PRIMER PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(5,5,'PRIMER PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(6,4,'SEGUNDO PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(7,4,'SEGUNDO PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(8,4,'SEGUNDO PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(9,4,'SEGUNDO PISO');

INSERT INTO MESA(IdMesa,NumMaxComensales,Ubicacion)
VALUES(10,4,'SEGUNDO PISO');

commit;

-- ======================================================
-- TABLA MOZO
-- ======================================================

CREATE TABLE MOZO
( 
	IdMozo               INT  NOT NULL ,
	moz_nombre           varchar2(100)  NOT NULL ,
  moz_apellidopat      varchar2(100)  NOT NULL ,
	moz_apellidomat      varchar2(100)  NOT NULL,
  telefono             varchar2(20)   NULL,
  CONSTRAINT  PK_MOZO PRIMARY KEY (IdMozo) 
);

-- INSERT DATOS
CREATE SEQUENCE SQ_MOZO
INCREMENT BY 1
START WITH 1;

INSERT INTO MOZO (IdMozo,moz_nombre,moz_apellidopat,moz_apellidomat,telefono)
VALUES(SQ_MOZO.NEXTVAL,'ALFREDO','GONZALES','BANCES','984587451');

INSERT INTO MOZO (IdMozo,moz_nombre,moz_apellidopat,moz_apellidomat,telefono)
VALUES(SQ_MOZO.NEXTVAL,'JOSE LUIS','ZAPATA','MIRANDA',NULL);

INSERT INTO MOZO (IdMozo,moz_nombre,moz_apellidopat,moz_apellidomat,telefono)
VALUES(SQ_MOZO.NEXTVAL,'JORGE','BANCES','CHANG','942154785');

INSERT INTO MOZO (IdMozo,moz_nombre,moz_apellidopat,moz_apellidomat,telefono)
VALUES(SQ_MOZO.NEXTVAL,'CHRISTIAN','LOPEZ','RIOS','985478455');

COMMIT;
-- ======================================================
-- TABLA COCINERO
-- ======================================================

CREATE TABLE COCINERO
( 
	IdCocinero           INT  NOT NULL ,
	coc_nombre           varchar2(100)  NOT NULL ,
  coc_apellidopat      varchar2(100)  NOT NULL ,
	coc_apellidomat      varchar2(100)  NOT NULL,
  telefono             varchar2(20)   NULL,
  CONSTRAINT  PK_COCINERO PRIMARY KEY (IdCocinero)
);

-- INSERT DATOS

CREATE SEQUENCE SQ_COCINERO
INCREMENT BY 1
START WITH 1;

INSERT INTO COCINERO (IdCocinero,coc_nombre,coc_apellidopat,coc_apellidomat,telefono)
VALUES(SQ_COCINERO.NEXTVAL,'JUAN CARLOS','SANCHEZ','ZAPATA','977612594');

INSERT INTO COCINERO (IdCocinero,coc_nombre,coc_apellidopat,coc_apellidomat,telefono)
VALUES(SQ_COCINERO.NEXTVAL,'FIDEL','LOPEZ','AYALA','995164224');

COMMIT;

-- ======================================================
-- TABLA PLATO
-- ======================================================
CREATE TABLE PLATO 
(
	IdPlato INT NOT NULL,
	NombrePlato varchar2(100) NOT NULL,
	CONSTRAINT PK_PLATO PRIMARY KEY (IdPlato)
);
-- INSERT DATOS
CREATE SEQUENCE SQ_PLATO
INCREMENT BY 1
START WITH 1;

INSERT INTO PLATO (IdPlato,NombrePlato)
VALUES(SQ_PLATO.NEXTVAL,'ARROZ CON POLLO');
INSERT INTO PLATO (IdPlato,NombrePlato)
VALUES(SQ_PLATO.NEXTVAL,'TALLARINES');
INSERT INTO PLATO (IdPlato,NombrePlato)
VALUES(SQ_PLATO.NEXTVAL,'CHAUFA');
INSERT INTO PLATO (IdPlato,NombrePlato)
VALUES(SQ_PLATO.NEXTVAL,'MONDONGUITO');
INSERT INTO PLATO (IdPlato,NombrePlato)
VALUES(SQ_PLATO.NEXTVAL,'ESTOFADO');
INSERT INTO PLATO (IdPlato,NombrePlato)
VALUES(SQ_PLATO.NEXTVAL,'SECO DE CORDERO');

COMMIT;


-- ======================================================
-- TABLA FACTURA
-- ======================================================

CREATE TABLE FACTURA
( 
	IdFactura            INT  NOT NULL ,
	IdCliente            INT  NOT NULL ,
	IdMozo               INT  NOT NULL ,
	IdMesa               INT  NOT NULL ,
	FechaFactura         date NOT NULL ,
	CONSTRAINT  PK_FACTURA PRIMARY KEY (IdFactura),
	CONSTRAINT FK_FACTURA_CLIENTE FOREIGN KEY (IdCliente) REFERENCES CLIENTE(IdCliente) ,
	CONSTRAINT FK_FACTURA_MOZO FOREIGN KEY (IdMozo) REFERENCES MOZO (IdMozo),
  CONSTRAINT FK_FACTURA_MESA FOREIGN KEY (IdMesa) REFERENCES MESA (IdMesa)
);
-- Cargar Datos
CREATE SEQUENCE SQ_FACTURA
INCREMENT BY 1
START WITH 1000;

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'1','1','1',to_date('06/11/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'2','2','1',to_date('03/09/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'3','3','2',to_date('06/11/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'1','4','3',to_date('12/08/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'5','4','3',to_date('06/11/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'6','2','5',to_date('16/10/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'1','3','3',to_date('16/10/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'8','1','7',to_date('06/11/2018','DD/MM/YYYY'));

INSERT INTO FACTURA(IdFactura,IdCliente,IdMozo,IdMesa,FechaFactura)
VALUES(SQ_FACTURA.NEXTVAL,'8','2','3',to_date('26/10/2018','DD/MM/YYYY'));
commit;

-- ======================================================
-- TABLA DETALLEFACTURA
-- ======================================================


CREATE TABLE DETALLEFACTURA
( 
	IdDetalleFactura     INT  NOT NULL ,
  IdFactura            INT  NOT NULL ,
	IdCocinero           INT  NOT NULL ,
	IdPlato                INT  NOT NULL ,
	Importe              decimal(10,2) NOT NULL,	
  CONSTRAINT PK_DETALLEFACTURA PRIMARY KEY (IdDetalleFactura) ,
	CONSTRAINT FK_DETALLEFACTURA_FACTURA FOREIGN KEY (IdFactura) REFERENCES FACTURA(IdFactura) ,
	CONSTRAINT FK_DETALLEFACTURA_COCINERO FOREIGN KEY (IdCocinero) REFERENCES COCINERO(IdCocinero),
	CONSTRAINT FK_DETALLEFACTURA_PLATO FOREIGN KEY (IdPlato) REFERENCES PLATO(IdPlato)
);
-- insert datos

CREATE SEQUENCE SQ_DETALLEFACTURA
INCREMENT BY 1
START WITH 1000;

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(SQ_DETALLEFACTURA.NEXTVAL,1001,2,1,10.0);

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(SQ_DETALLEFACTURA.NEXTVAL,1001,1,2,11.0);

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(SQ_DETALLEFACTURA.NEXTVAL,1001,2,3,10.0);

INSERT INTO DETALLEFACTURA(IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(SQ_DETALLEFACTURA.NEXTVAL,1001,1,4,10.0);

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(SQ_DETALLEFACTURA.NEXTVAL,1001,2,5,12.0);
/*
 --CODIGO ALTERNO AL ANTERIOR
INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(1001,1001,2,1,10.0);

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(1002,1001,1,2,11.0);

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(1003,1001,2,3,10.0);

INSERT INTO DETALLEFACTURA(IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(1004,1001,1,4,10.0);

INSERT INTO DETALLEFACTURA (IdDetalleFactura,IdFactura,IdCocinero,IdPlato,Importe)
VALUES(1005,1001,2,5,12.0);
*/


-- ACTUALIZANDO TABLA CLIENTE (SEXO)
UPDATE PRODUCCION.CLIENTE SET CLI_SEXO = 'F' WHERE 
IDCLIENTE = 1 OR IDCLIENTE = 2 OR IDCLIENTE = 3 OR IDCLIENTE = 4 OR IDCLIENTE = 6 OR
IDCLIENTE = 7 OR  IDCLIENTE = 11 OR IDCLIENTE = 12 OR IDCLIENTE = 13;
UPDATE PRODUCCION.CLIENTE SET CLI_SEXO = 'M' WHERE IDCLIENTE NOT IN(1,2,3,4,6,7,11,12,13);

-- ACTUALIZANDO EL REGISTRO CON ID 12 DE TABLA CLIENTE (EMAIL)
UPDATE PRODUCCION.CLIENTE SET CLI_EMAIL = 'yani_bances@gmail.com' WHERE IDCLIENTE = 12;

-- ACTUALIZANDO VARIOS REGISTROS DE TABLA CLIENTE (TELEFONO FIJO)
UPDATE PRODUCCION.CLIENTE SET TELEFONO = '3542125' WHERE IDCLIENTE = '2';
UPDATE PRODUCCION.CLIENTE SET TELEFONO = '3911147' WHERE IDCLIENTE = '8';
UPDATE PRODUCCION.CLIENTE SET TELEFONO = '3948618' WHERE IDCLIENTE = '10';



COMMIT;
-- =================================================
--FIN
-- =================================================

select * from CLIENTE;
select * from MESA;
select * from COCINERO;
select * from PLATO;
select * from MOZO;
select * from FACTURA;
select * from DETALLEFACTURA;
