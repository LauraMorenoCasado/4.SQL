--La consulta quedaría así:
select first_name ,
	count (actor_id ) as number
from actor a 
group by first_name
order by "number" desc;