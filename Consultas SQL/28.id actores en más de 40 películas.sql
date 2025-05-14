--Cogemos la tabla film_actor:
select *
from film_actor fa ;

--La consulta quedaría así:
select actor_id ,
	count (film_id) as film_numbers
from film_actor fa 
group by actor_id 
order by actor_id ;