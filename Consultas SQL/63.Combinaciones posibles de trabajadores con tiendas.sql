--La consulta quedaría:
select s2.staff_id, 
	s2.first_name, 
	s2.last_name, 
	s.store_id
from store s 
cross join staff s2 ;
