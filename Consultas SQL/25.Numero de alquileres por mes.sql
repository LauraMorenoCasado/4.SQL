--Cogemos la tabla rental
select *
from rental r ;

/** En esta consulta hemos utilizado
 * extract para poder extraer el mes de la fecha:
 */
select count (rental_id ) as rental_number,
	extract (month from rental_date) as month
from rental r 
group by (extract (month from rental_date)) 
order by month;


