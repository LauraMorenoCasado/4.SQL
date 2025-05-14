/** Cogemos la tabla film
*/
select *
from film f ;

--Ahora, hacemos la consulta:
select rating,
	count (film_id ) as total_films
from film f 
group by rating;