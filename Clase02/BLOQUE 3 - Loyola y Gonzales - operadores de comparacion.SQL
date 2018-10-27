/*2. Desarrolle una sentencia SELECT para consultar los cursos que no tienen alumnos matriculados. Esquema EDUCA.
*/
SELECT cur_nombre,CUR_MATRICULADOS FROM educa.CURSO
WHERE CUR_MATRICULADOS = 0;

/*3. Desarrollar una sentencia SELECT para consultar los productos que su precio en mayor a 50 Soles. Esquema VENTAS.*/


SELECT NOMBRE, PRECIO FROM VENTAS.producto
WHERE PRECIO > 50;

/*4. Desarrollar una sentencia SELECT para consultar los empleados que su salario en mayor a 3000.00. Esquema HR.*/

SELECT FIRST_NAME||', '||  LAST_NAME, SALARY FROM RRHH.EMPLOYEES
WHERE SALARY > 3000


/*5.Desarrollar una sentencia SELECT para consultar las cuentas en SOLES. Esquema EUREKA.*/

SELECT * FROM EUREKA.CUENTA 
WHERE CHR_MONECODIGO = '01'
