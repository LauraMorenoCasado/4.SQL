-- cogemos la tabla actor:
select *
from actor a ;

-- La consulta quedaría así:
select concat (first_name, ' ', last_name ) as actors_names
from actor a ;