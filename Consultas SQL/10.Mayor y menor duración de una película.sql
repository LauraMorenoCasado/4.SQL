--Cogemos la tabla film:
select *
from film f ;

--La consulta queda así:
select min(length) as min_length,
	max(length) as max_length
from film f ;