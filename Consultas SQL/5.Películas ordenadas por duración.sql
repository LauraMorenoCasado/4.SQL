/** Comenzamos explorando la tabla:
*/
select *
from film f ;

/** Para ordenar la tabla por duración 
 * de la película 
 * vamos hacerlo de la siguiente manera:
 */
select film_id ,
	title ,
	length 
from film f 
order by length asc;
