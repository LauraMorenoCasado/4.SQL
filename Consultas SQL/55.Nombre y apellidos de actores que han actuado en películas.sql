/*Para realizar esta consulta, 
 * vamos a ver cuando se alquiló por primera vez 
 * la película 'Spartacus Cheaper'
 */
select film_id 
from film f 
where title = 'SPARTACUS CHEAPER' ;

--Ya sabemos que nuestro ID buscado de la película es el 824
-- Ahora vamos a ver cuando se alquiló por primera vez ese ID.
select r.inventory_id , r.rental_date
from inventory i
join rental r 
	on i.inventory_id = r.inventory_id
where i.film_id = 824
order by r.rental_date;

--Ya sabemos que se alquiló por primera vez el 2005-07-08 06:43:42.000
--Ahora procedemos hacer el resto de la consulta:
select a.first_name, a.last_name, count (fa.film_id) as film_numbers
from actor a 
join film_actor fa 
	on a.actor_id = fa.actor_id
join inventory i 
	on i.film_id = fa.film_id
join rental r 
	on i.inventory_id = r.inventory_id
where r.rental_date > '2005-07-08'
group by a.first_name, a.last_name
order by a.last_name;
/*Para que la consulta quedara más completa, 
 * hemos creado otra columna donde nos da la información del número 
 * de películas en las que ha actuado cada actor.
 */