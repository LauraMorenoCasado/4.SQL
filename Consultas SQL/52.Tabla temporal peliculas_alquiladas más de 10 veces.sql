with peliculas_alquiladas as (
select i.film_id , count (r.rental_id) as count_rent
from rental r 
right join inventory i 
	on r.inventory_id = i.inventory_id
group by i.film_id
order by i.film_id
)
select *
from peliculas_alquiladas 
where count_rent > 10 ;