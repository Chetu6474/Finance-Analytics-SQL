with actors_age as (select 
name as actor_name,
year(curdate())-birth_year as age
from actors )
select actor_name, age
from actors_age
where age > 70 and age <85
