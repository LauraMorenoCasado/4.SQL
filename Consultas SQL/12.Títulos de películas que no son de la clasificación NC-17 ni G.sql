--Cogemos la tabla film:
select *
from film f ;

--La consulta quedaría:
select film_id , title , rating 
from film f 
where rating not in ('NC-17', 'G');