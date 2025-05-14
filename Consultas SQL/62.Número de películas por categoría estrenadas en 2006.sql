--La consulta sería:
select c."name" as category_name, 
	count (f.film_id) as total_film
from film f 
join film_category fc 
	on f.film_id = fc.film_id
join category c 
	on c.category_id = fc.category_id 
where f.release_year = '2006'
group by c."name";