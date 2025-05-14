/** Para esta consulta, vamos a necesitar
 * anidar 3 tablas, film, film_category y category
 * Por lo tanto, vemos primero las 3 tablas para 
 * ver con qué campos nos quedamos:
 */
select *
from film f ;

select *
from film_category fc ;

select *
from category c ;

--Ahora, generamos la consulta:
select c."name",
	avg (f.length ) as length_average
from film f 
inner join film_category fc 
	on f.film_id =fc.film_id 
	inner join category c 
		on fc.category_id = c.category_id
where f.length > 180
group by c."name"
order by c."name";
		