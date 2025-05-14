/** Ahora cogemos la tabla actor:
 */
select *
from actor a ;

/** La consulta queda de la siguiente manera:
*/
select actor_id ,
	concat(first_name, ' ', last_name ) as actors_names
from actor a 
where last_name = 'ALLEN'
order by actor_id ;