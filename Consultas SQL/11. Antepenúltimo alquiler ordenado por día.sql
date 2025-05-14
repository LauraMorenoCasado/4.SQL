--Cogemos la tabla rental:
select *
from rental r ;

/**Nos va hacer falta también 
 * la tabla de payment
 */
select *
from payment p ;

--La consulta quedaría así:
select r.rental_id, r.rental_date, p.amount
from payment p
left join rental r 
	on r.rental_id = p.rental_id
order by r.rental_date desc
limit 1 offset 2 ;