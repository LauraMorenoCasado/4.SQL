-- Cogemos la tabla actor:
select *
from actor a ;

--La consulta quedaría así:
select actor_id ,
	first_name as Nombre , 
	last_name as Apellido ,
	last_update 
from actor a ;