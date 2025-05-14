-- Cogemos la tabla renta:
select *
from rental r ;

-- La consulta quedaría así:
select rental_date,
	count (rental_id ) as rental_number 
from rental r 
group by rental_date
order by rental_number desc ;