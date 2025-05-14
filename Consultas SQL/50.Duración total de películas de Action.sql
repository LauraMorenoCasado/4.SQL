--La consulta sería:
select f.film_id, f.title , sum (f.length) as total_length
from film f 
left join film_category fc 
	on fc.film_id = f.film_id
where fc.category_id = 1
group by f.film_id
order by f.film_id;