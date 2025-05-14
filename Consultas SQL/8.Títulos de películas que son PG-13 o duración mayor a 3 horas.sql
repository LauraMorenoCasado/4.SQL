--Cogemos la tabla film:
select *
from film f ;

--Hacemos la consulta:
select film_id ,
	title ,
	length ,
	rating 
from film f 
where rating = 'PG-13' or length > 360;