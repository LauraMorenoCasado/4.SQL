/**Cogemos la tabla film
 * para quedarnos con las columnas que 
 * nos hacen falta para esta consulta:
 */
select *
from film f ;

-- La consulta quedaría de la siguiente manera:
select avg (rental_duration) as media_duracion
from film f ;