-- cogemos la tabla film:
select *
from film f ;

/** Primero calculamos cual es 
 * la media de la duración,
 * que observamos que es 115
 * sin decimales, puesto que la columna no tiene decimales:
 */
select round(avg (length))
from film f ;

--Ahora hacemos al consulta:
select title, length 
from film f 
where length > 115 ;