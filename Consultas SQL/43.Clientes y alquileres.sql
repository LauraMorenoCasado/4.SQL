--Cogeremos dos tablas:
select *
from customer c ;

select *
from rental r ;

--La consulta quedaría así:
select c.customer_id , 
	rental_id
from customer c 
left join rental r 
	on c.customer_id = r.customer_id
where rental_id is not null
	or rental_id is null
order by c.customer_id;