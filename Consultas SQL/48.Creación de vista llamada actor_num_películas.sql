-- Para esta consulta necesitamos anidar varias tablas:
select *
from film_category fc ;

select *
from film_actor fa ;

select *
from actor a ;

-- La consulta quedaría así:
create view “actor_num_peliculas” as
select a.actor_id, 
	concat (a.first_name, ' ', a.last_name) as actors_name , 
	count (fa.film_id) as films_number
from actor a 
inner join film_actor fa 
	on a.actor_id = fa.actor_id
inner join film_category fc 
	on fc.film_id = fa.film_id 
group by a.actor_id
order by a.actor_id;