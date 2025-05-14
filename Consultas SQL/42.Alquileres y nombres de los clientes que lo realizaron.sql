--Cogeremos dos tablas:
select *
from customer c ;

select *
from rental r ;

--La consulta quedaría así:
select r.rental_id ,
	concat (c.first_name, ' ', c.last_name) as customers
from rental r 
right join customer c 
	on r.customer_id = c.customer_id 
order by r.rental_id ;