--En esta consulta se anidan 3 tablas:
select a.first_name, a.last_name , c."name", count (fa.film_id) as film_number
from film_actor fa 
join film_category fc 
	on fa.film_id = fc.film_id
join category c 
	on fc.category_id = c.category_id
join actor a 
	on fa.actor_id = a.actor_id
where c."name" = 'Sci-Fi'
group by a.first_name, a.last_name , c."name"
order by a.last_name ;