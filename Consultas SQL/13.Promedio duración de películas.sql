--Cogemos la tabla film:
select *
from film f ;

--La consulta quedaría así:
select rating ,
	avg(length) as length_average
from film f 
group by rating ;