--Cogemos la tabla payment:
select *
from payment p ;

--La consulta quedaría así
select avg (amount ) as average,
	stddev(amount) as std,
	variance(amount ) as variance
from payment p ;