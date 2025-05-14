--Cogemos 3 tablas en este caso:
select *
from actor a ;

select *
from film_actor fa ;

select *
from film f ;

--La consulta quedaría así:
select concat (a.first_name, ' ', a.last_name) as actors_names , 
	f.title
from film f 
inner join film_actor fa 
	on f.film_id = fa.film_id
inner join actor a 
	on a.actor_id = fa.actor_id
where f.title = 'EGG IGBY';