-- La consulta quedaría:
select f.title, (r.return_date - r.rental_date) as difference
from rental r 
join inventory i 
	on r.inventory_id = i.inventory_id
join film f 
	on i.film_id =f.film_id
where (r.return_date - r.rental_date) > '8 days' ;