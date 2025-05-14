-- La consulta quedaría así:
select customer_id  , count (rental_id ) as rent_number
from rental r
group by customer_id 
order by customer_id ;