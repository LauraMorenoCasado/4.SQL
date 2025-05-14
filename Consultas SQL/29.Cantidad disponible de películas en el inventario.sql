-- Cogeremos dos tablas en esta consulta:
select *
from film f ;

select *
from inventory i ;

--La consulta quedaría así:
select f.film_id, f.title, count (i.inventory_id) as inventory
from film f 
inner join inventory i 
	on f.film_id = i.film_id
where exists(
	select 1
	from inventory i 
	where f.film_id = i.film_id )
group by f.film_id, f.title
order by f.film_id ;