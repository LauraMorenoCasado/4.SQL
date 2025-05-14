-- Cogemos la tabla de actores:
select *
from actor a ;

--La consulta quedaría así:
select actor_id ,
	concat (first_name , ' ', last_name) as actors_names
from actor a 
where first_name = 'JOHNNY'
order by actor_id ;