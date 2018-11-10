-- ==============================
-- TRANSACCIONES
-- ==============================

SELECT * FROM eureka.cuenta
WHERE CHR_CUENCODIGO = '00200002';

SELECT * FROM eureka.MOVIMIENTO
WHERE CHR_CUENCODIGO = '00200002';

/*

SELECT ... FOR UPDATE ...

*/


SELECT * FROM scott.emp FOR UPDATE;

ROLLBACK;







