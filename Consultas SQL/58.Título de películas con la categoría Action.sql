--La consulta quedaría:
select f.title
from film f 
join film_category fc 
	on f.film_id =fc.film_id
where fc.category_id = 2 ;