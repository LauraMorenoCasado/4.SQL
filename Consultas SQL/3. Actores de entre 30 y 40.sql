/**Comenzamos identificando la tabla
 * Y familiarizandonos con las columnas.
 */
select *
from actor a ;

/** Para esta consulta vamos a utilizar 
 * el Limit y el offset de la siguiente manera
 */
select actor_id ,
	concat (first_name, ' ', last_name) as actors_names
from actor a 
order by actor_id 
limit 10
offset 30;
