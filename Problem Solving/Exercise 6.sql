select *
from movies
where
release_year in ((select min(release_year) from movies) , (select max(release_year) from movies) )


select * from movies where imdb_rating > (select avg(imdb_rating) from movies)