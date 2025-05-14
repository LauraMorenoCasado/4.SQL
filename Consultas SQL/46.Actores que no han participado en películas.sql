-- Para esta consulta necesitamos anidar varias tablas:
select *
from film_category fc ;

select *
from film_actor fa ;

select *
from actor a ;

-- La consulta quedaría así:
select a.actor_id, concat (a.first_name, ' ', a.last_name) as actors_name 
from actor a 
inner join film_actor fa 
	on a.actor_id = fa.actor_id
inner join film_category fc 
	on fc.film_id = fa.film_id 
where fa.film_id is null ;