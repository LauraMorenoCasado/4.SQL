--Cogemos la tabla customer:
select *
from customer c ;

--La consulta quedaría así:
select customer_id , 
	concat (first_name , ' ', last_name) as customer_name
from customer c 
order by c.customer_id desc
limit 10 ;