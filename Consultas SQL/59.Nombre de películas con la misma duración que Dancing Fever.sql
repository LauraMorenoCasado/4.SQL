-- Vamos a localizar la diración de la película Dancing Fever:
select *
from film f 
where title = 'DANCING FEVER'

--Es 144, por lo tanto la consulta quedaría:
select title, length 
from film f 
where length =144
order by title ;