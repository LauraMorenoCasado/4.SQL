--Cogeremos dos tablas:
select *
from customer c ;

select *
from payment p ;

--La consulta quedaría así:
select c.customer_id , 
	concat (c.first_name, ' ', c.last_name) as customers_name ,
	sum(p.amount) as total
from customer c 
inner join payment p 
	on c.customer_id = p.customer_id
group by c.customer_id
order by total desc
limit 5 ;