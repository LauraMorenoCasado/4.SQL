-- Cogeremos dos tablas:
select *
from actor a ;

select *
from film_actor fa ;

--La consulta quedaría así:
select a.actor_id,
	concat(a.first_name , ' ', a.last_name) as actors_names,
	count (fa.film_id) as number_films
from actor a 
left join film_actor fa 
	on a.actor_id = fa.actor_id
group by a.actor_id 
order by a.actor_id;