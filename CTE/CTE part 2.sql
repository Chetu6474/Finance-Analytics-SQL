with 
x as (select *,
(revenue-budget)*100/budget as pct_profit
from financials),
y as (select *
from movies
where imdb_rating < (select avg(imdb_rating) from movies))
select *
from x
join y
using (movie_id)
where pct_profit >= 500