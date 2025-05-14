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
select f.film_id,
	f.title,
	concat (a.first_name, ' ', a.last_name) as actors_name
from film f 
inner join film_actor fa 
	on fa.film_id = f.film_id
inner join actor a 
	on fa.actor_id = a.actor_id
where concat (a.first_name, ' ', a.last_name) is not null or concat (a.first_name, ' ', a.last_name) is null
order by f.film_id ;