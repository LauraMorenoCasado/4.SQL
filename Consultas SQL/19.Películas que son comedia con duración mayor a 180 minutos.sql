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
select f.title as film_name , c."name" as category_name, f.length as film_length
from film f 
inner join film_category fc 
	on fc.film_id = f.film_id
	inner join category c 
		on fc.category_id = c.category_id
where c."name" = 'Comedy' and f.length > 180 ;