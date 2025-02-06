select release_year as ry,
count(release_year) as ct
from movies
group by ry
order by (ry) desc