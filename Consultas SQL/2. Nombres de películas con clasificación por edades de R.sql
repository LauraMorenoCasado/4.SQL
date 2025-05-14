select *
from film f ;

/** A continuación, observamos que la única clasificación R 
 * se encuentra en la columna Rating, por lo tanto, 
 * aplicamos dicha clasificación por esta columna.
 */
select film_id ,
	title ,
	rating 
from film f 
where rating = 'R'
order by film_id ;