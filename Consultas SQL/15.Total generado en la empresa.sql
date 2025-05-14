--Cogemos la tabla payment:
select *
from payment p ;

--La consulta quedaría así:
select sum(amount) as Total_generado
from payment p ;