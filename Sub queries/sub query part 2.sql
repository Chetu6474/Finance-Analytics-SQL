select * 
from(select
name,
year(curdate())- birth_year as age
from actors) as actors_age
where age>70 and age<85