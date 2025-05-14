-- Aquí cogeremos 3 tablas:
select *
from film f ;

select *
from inventory i ;

select *
from rental r ;

-- La consulta quedaría así:
select f.film_id, f.title , r.rental_id
from film f 
inner join inventory i 
	on f.film_id = i.film_id
inner join rental r 
	on i.inventory_id = r.inventory_id
order by f.film_id ;