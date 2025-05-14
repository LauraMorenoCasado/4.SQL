-- Para esta consulta necesitamos anidar varias tablas:
select *
from category c ;

select *
from film_category fc ;

select *
from film_actor fa ;

select *
from actor a ;

-- La consulta quedaría así:
select a.actor_id, concat (a.first_name, ' ', a.last_name) as actors_name, c."name" as category_name
from category c 
inner join film_category fc 
	on fc.category_id = c.category_id
inner join film_actor fa 
	on fa.film_id = fc.film_id
inner join actor a 
	on fa.actor_id = a.actor_id
where c."name" = 'Action'
order by a.actor_id;