--La consulta quedaría:
select c.first_name, c.last_name, 
	count (distinct (i.film_id)) as film_number
from customer c 
join inventory i 
	on i.store_id = c.store_id 
group by c.first_name, c.last_name
order by c.last_name;
