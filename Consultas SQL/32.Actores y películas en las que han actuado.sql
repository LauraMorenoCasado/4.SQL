/** En esta consutla cogeremos 3 tablas
 * para mostrar la información mejor:
 */
select *
from film f ;

select *
from film_actor fa ;

select *
from actor a ;

-- La consulta quedaría así:
select a.actor_id ,
	concat (a.first_name, ' ', a.last_name) as actors_name ,
	f.film_id,
	f.title
from film f 
inner join film_actor fa 
	on fa.film_id = f.film_id
inner join actor a 
	on fa.actor_id = a.actor_id
where f.film_id is not null 
or f.film_id is null
order by actor_id  ;