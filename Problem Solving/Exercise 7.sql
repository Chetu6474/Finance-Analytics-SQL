#Select all Hollywood movies released after the year 2000 that made more than 500 million $ profit or more profit.
with 
x as (select * from movies where industry = "hollywood"),
z as (select *,(revenue-budget) as profit from financials)
select * 
from x
join z 
using (movie_id)
where z.profit > 500 AND x.release_year > 2000
order by x.release_year desc