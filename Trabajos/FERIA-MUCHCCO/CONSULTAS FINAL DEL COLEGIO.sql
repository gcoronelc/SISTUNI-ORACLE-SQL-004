select * from andres.persona

/* 1- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR EL NOMBRE DEL ALUMNO Y SU PROMEDIO FINAL 
   EN CADA CURSO */

select pers.nombre,pers.apellido,asi.nomb_asignatura, 
round((((nt.pc1+nt.pc2+nt.pc3)/3)+nt.ex_mensual+nt.ex_bimestral)/3,2) Prom_Final
from alumno al 
inner join persona pers on al.idalumno=pers.idpersona
inner join notas nt on al.idalumno=nt.idalumno
inner join asignatura asi on nt.codasignatura=asi.codasignatura;

/* 2- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR TODOS LOS NOMBRES DE LOS ALUMNOS
DE 6T0 GRADO DE PRIMARIA */
select * from grado;
select distinct(gr.grado), gr.nivel, pers.nombre, pers.apellido 
from alumno al 
inner join persona pers on al.idalumno=pers.idpersona
inner join notas nt on al.idalumno=nt.idalumno
inner join asignatura asi on nt.codasignatura=asi.codasignatura
inner join grado_asignatura gas on asi.codasignatura=gas.codasignatura
inner join grado gr on gas.codgrado=gr.codgrado
where gr.codgrado='GR0006';

/* 3- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR TODAS LAS PERSONAS 
QUE NO SON ALUMNOS */

select * from persona where tipopersonaa<>'AL';

/* 4- DESARROLE UNA SENTENCIA  QUE PERMITA MOSTRAR LA EDAD PROMEDIO 
DE LOS MAESTROS*/

select round(avg(pers.edad),0) Edad_Promedio
from maestro ma 
inner join persona pers on ma.idmaestro=pers.idpersona;

/* 5- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR LA CANTIDAD DE ALUMNOS
NACIDOS EN EL AÑO 2002 */

select count(idpersona) Cantidad_Personas from persona
where tipopersonaa='AL' and fechanacimiento LIKE '%2002';


/* 6- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR EL NOMBRE Y EL SUELDO 
DEL MAESTRO O LOS MAESTROS MEJORES PAGADOS DEL COLEGIO*/

select pers.nombre,mas.sueldo 
from persona pers
inner join maestro mas on pers.idpersona=mas.idmaestro
inner join (select max(sueldo) sueldo from maestro) sub on mas.sueldo=sub.sueldo;


select pers.nombre,mas.sueldo 
from persona pers 
inner join maestro mas on pers.idpersona=mas.idmaestro
where mas.sueldo=(select max(sueldo) from maestro);

/* 7- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR LOS NOMBRES DE LOS CURSOS DE 5TO DE PRIMARIA */

select distinct(gr.grado),gr.nivel,asig.nomb_asignatura from grado gr
inner join grado_asignatura ga on gr.codgrado=ga.codgrado
inner join asignatura asig on ga.codasignatura=asig.codasignatura
where gr.grado=5 and gr.nivel='PRIMARIA';

/* 8- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR EL NOMBRE DEL ALUMNO Y SU APODERADO*/

Select Al.Idalumno,pers2.nombre Alumno,Pers.Nombre Apoderado
From Persona Pers
Inner Join Alumno Al On Pers.Idpersona=Al.Idapoderado
Inner Join Persona Pers2 On Al.Idalumno=Pers2.Idpersona;

/* 9-DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR EL PROMEDIO MAS ALTO DEL
4TO DE PRIMARIA */ 

select max(round((((nt.pc1+nt.pc2+nt.pc3)/3)+nt.ex_mensual+nt.ex_bimestral)/3,2)) MAXIMA_NOTA
from notas nt
inner join asignatura asig on nt.codasignatura=asig.codasignatura
inner join grado_asignatura gas on asig.codasignatura=gas.codasignatura
inner join grado gr on gas.codgrado=gr.codgrado;

/* 10-LISTAR LOS PROFESORES QUE ENSEÑAN EN 4TO DE SECUNDARIA CON SU RESPECTIVO CURSO*/

select gr.grado,gr.nivel,pers.nombre,asig.nomb_asignatura
from persona pers
inner join maestro ma on pers.idpersona=ma.idmaestro
inner join maestro_asignatura mas on ma.idmaestro=mas.idmaestro
inner join asignatura asig on mas.codasignatura=asig.codasignatura
inner join grado_asignatura gas on asig.codasignatura=gas.codasignatura
inner join grado gr on gas.codgrado=gr.codgrado
where gr.grado=4 and gr.nivel='SECUNDARIA';

/* 11-DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR TODOS LOS ALUMNOS QUE 
EMPIEZEN SU NOMBRE CON LA LETRA 'A' HASTA LA 'G' */

select * from persona where nombre BETWEEN 'A%' and 'H%' AND tipopersonaa='AL';

/* 12- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR LA CANTIDAD DE MAESTROS
CON LA MAXIMA EDAD */

SELECT COUNT(IDPERSONA) CANTIDAD_DE_MAESTROS,EDAD FROM PERSONA
WHERE EDAD IN(SELECT MAX(EDAD) FROM PERSONA
WHERE TIPOPERSONAA='MA')
GROUP BY EDAD;

/* 13- DESARROLLE UNA SENTENCIA QUE PERMITA MOSTRAR LA SUMA TOTAL DE LOS SUELDOS
DE LOS MAESTROS */

SELECT SUM(SUELDO) TOTAL FROM MAESTRO;

/* 14- MOSTRAR LOS TELEFONOS DE LOS PADRES CUYOS ALUMNOS ESTAN INACTIVOS */

Select pers2.nombre Alumno,Al.estado,Pers.Nombre Apoderado,pers.telefono 
From Persona Pers
Inner Join Alumno Al On Pers.Idpersona=Al.Idapoderado
Inner Join Persona Pers2 On Al.Idalumno=Pers2.Idpersona
WHERE Al.estado='INACTIVO';


/* 15- MOSTRAR LA CANTIDAD DE ASIGNATURAS QUE HAY EN EL COLEGIO */
SELECT COUNT(CODASIGNATURA) Cantidad_De_Asignaturas FROM ASIGNATURA;


/* 16- MOSTRAR LA CANTIDAD DE CURSOS QUE HAY EN CADA GRADO */

SELECT g.grado,g.nivel,COUNT(*) Cant_Cursos FROM GRADO_ASIGNATURA GA
INNER JOIN GRADO G ON GA.CODGRADO=G.CODGRADO
INNER JOIN ASIGNATURA A ON GA.CODASIGNATURA=A.CODASIGNATURA
GROUP BY g.grado,g.nivel
order by g.nivel,g.grado;

/* 17- MOSTRAR LOS PROFESORES QUE GANAN POR ENCIMA DEL PROMEDIO DE SUELDOS */

select mas.idmaestro,pers.nombre,mas.sueldo from maestro mas
inner join persona pers on mas.idmaestro=pers.idpersona
where sueldo > (SELECT avg(sueldo) FROM MAESTRO );

/* 18- MOSTRAR LOS PROFESORES QUE TRABAJAN EN EL PRIMER o SEGUNDO PISO */

select distinct(pers.nombre),pers.apellido
from persona pers
inner join maestro ma on pers.idpersona=ma.idmaestro
inner join maestro_asignatura mas on ma.idmaestro=mas.idmaestro
inner join asignatura asig on mas.codasignatura=asig.codasignatura
inner join grado_asignatura gas on asig.codasignatura=gas.codasignatura
inner join grado gr on gas.codgrado=gr.codgrado
where gr.piso=1 or gr.piso=2;

/* 19- MOSTRAR LOS DOCENTES QUE DICTEN MAS DE 2 CURSOS */
select idmaestro, count(codasignatura) from maestro_asignatura
group by idmaestro
having count(codasignatura)>2
ORDER BY IDMAESTRO;

/* 20-DESARROLLE UNA SENTENCIA PARA MOSTRAR LA CANTIDAD DE ALUMNOS
   CON PROMEDIO MAYOR A 12 EN MATEMATICA */

select 
COUNT(round((((nt.pc1+nt.pc2+nt.pc3)/3)+nt.ex_mensual+nt.ex_bimestral)/3,2)) Prom_Final
from alumno al 
inner join persona pers on al.idalumno=pers.idpersona
inner join notas nt on al.idalumno=nt.idalumno
inner join asignatura asi on nt.codasignatura=asi.codasignatura
where asi.nomb_asignatura='Matematica' AND round((((nt.pc1+nt.pc2+nt.pc3)/3)+nt.ex_mensual+nt.ex_bimestral)/3,2)>12;



/* 21- MOSTRAR LOS TELEFONOS DE LOS PADRES CUYOS ALUMNOS ESTAN DESAPROBADOS (<11) en Matematica */

select pers2.idpersona,pers2.nombre,pers2.apellido, 
round((((nt.pc1+nt.pc2+nt.pc3)/3)+nt.ex_mensual+nt.ex_bimestral)/3,2) Prom_Final, Pers.Nombre Apoderado, pers.telefono
from persona pers 
Inner Join Alumno Al On Pers.Idpersona=Al.Idapoderado
Inner Join Persona Pers2 On Al.Idalumno=Pers2.Idpersona
inner join notas nt on al.idalumno=nt.idalumno
inner join asignatura asi on nt.codasignatura=asi.codasignatura
WHERE asi.nomb_asignatura='Matematica' and round((((nt.pc1+nt.pc2+nt.pc3)/3)+nt.ex_mensual+nt.ex_bimestral)/3,2)<11;

