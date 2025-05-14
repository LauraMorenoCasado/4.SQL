--La consulta quedaría:
select c.customer_id, 
	c.first_name, 
	c.last_name, 
	count (film_id) as total_film
from rental r 
join customer c 
	on r.customer_id = c.customer_id
join inventory i 
	on i.inventory_id = r.inventory_id
group by c.customer_id, c.first_name, c.last_name;