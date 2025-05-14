/** En esta consulta nos damos cuenta 
 * que con la tabla film solo no nos vale.
 */
select *
from film f ;

-- Aqui cogemos la segunda tabla
select *
from "language" l ;

-- La consulta queda de la siguiente manera:
select f.film_id,
	f.title, 
	f.language_id, 
	f.original_language_id, 
	l."name"
from film f 
right join "language" l 
	on f.language_id = l.language_id 
where f.language_id = f.original_language_id
order by f.film_id;