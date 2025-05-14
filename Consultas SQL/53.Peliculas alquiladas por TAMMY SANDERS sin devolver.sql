-- La consulta quedaría así:
select r.customer_id, 
	concat(c.first_name, ' ', c.last_name) as customers , 
	f.title , 
	r.rental_date, 
	r.return_date
from rental r 
right join inventory i 
	on r.inventory_id = i.inventory_id
join film f 
	on f.film_id = i.film_id 
join customer c 
	on r.customer_id = c.customer_id
where r.customer_id = 75 and r.return_date is null
order by f.title ;