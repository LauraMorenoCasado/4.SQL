/**En este caso tenemos que anexar 4 tablas
 * hasta llegar al resultado esperado:
 */
select *
from film;

select *
from payment p ;

select *
from inventory i ;

select *
from rental r ;


--Primero vamos a ver el precio medio por el que se alquilan las películas:
select round(avg(amount)) as precio_medio
from payment p ;


--Sabiendo que el precio medio son 4, la consulta quedaría así:
select f.title, p.amount 
from film f 
inner join inventory i 
	on f.film_id = i.film_id
inner join rental r 
	on r.inventory_id = i.inventory_id
inner join payment p 
	on p.rental_id = r.rental_id
where p.amount > 4 ;
	