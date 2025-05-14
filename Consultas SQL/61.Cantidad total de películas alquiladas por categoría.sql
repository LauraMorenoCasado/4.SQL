--La consulta sería:
select c."name" as category_name, 
	count (i.film_id) as total_film
from inventory i 
join rental r 
	on i.inventory_id  = r.inventory_id 
join film_category fc 
	on i.film_id = fc.film_id
join category c 
	on fc.category_id = c.category_id
where r.rental_id > 0
group by c."name" ;