--La consulta quedaría así:
with Cliente_rentas_temporal as (
	select customer_id, count(rental_id) as Total_rent
	from rental r 
	group by customer_id 
	order by customer_id 
)
select *
from Cliente_rentas_temporal ;