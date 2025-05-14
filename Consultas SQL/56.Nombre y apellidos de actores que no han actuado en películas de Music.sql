-- Para hacer esta consulta tenemos que anidar 4 tablas:
select a.first_name, a.last_name, c."name"
from category c 
join film_category fc 
	on c.category_id = fc.category_id
join film_actor fa 
	on fc.film_id = fa.film_id
join actor a 
	on a.actor_id = fa.actor_id
where c."name" <> 'Music';
