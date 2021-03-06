PROCEDURE PRC_GET_PROFESIONALES
(P_APE_PATERNO IN VARCHAR2, P_APE_MATERNO IN VARCHAR2, P_NOMBRE IN VARCHAR2, P_CURSOR OUT NOCOPY T_CURSOR)
IS
    V_APE_PATERNO VARCHAR2(100);
    V_APE_MATERNO VARCHAR2(100);
    V_NOMBRE VARCHAR2(100);
BEGIN

	IF P_APE_PATERNO IS NULL AND P_APE_MATERNO IS NULL AND P_NOMBRE IS NULL THEN
		V_CONTROL := 1;
	END IF;

	V_APE_PATERNO := UPPER( TRIM( P_APE_PATERNO ) ) || '%';
	V_APE_MATERNO := UPPER( TRIM( P_APE_MATERNO ) ) || '%';
	V_NOMBRE := UPPER ( TRIM ( P_NOMBRE ) ) || '%';


	OPEN p_cursor FOR
	SELECT ID_PROFESIONAL ID, APELLIDO_PATERNO PATERNO, APELLIDO_MATERNO MATERNO, NOMBRES
	FROM T_M_PROFESIONALES
	WHERE UPPER( NVL(APELLIDO_PATERNO,'X') ) LIKE CASE WHEN P_APE_PATERNO IS NULL THEN UPPER( NVL(APELLIDO_PATERNO,'X') ) ELSE V_APE_PATERNO END
	AND UPPER( NVL(APELLIDO_MATERNO,'X' )) LIKE CASE WHEN P_APE_MATERNO IS NULL THEN UPPER( NVL(APELLIDO_MATERNO,'X' )) ELSE V_APE_MATERNO END
	AND UPPER( NVL(NOMBRES,'X') ) LIKE CASE WHEN P_NOMBRE IS NULL THEN UPPER( NVL(NOMBRES,'X') ) ELSE V_NOMBRE END
	AND ESTADO='1'
	AND ROWNUM <= CASE WHEN V_CONTROL = 1 THEN 50 ELSE ROWNUM END;

END;


