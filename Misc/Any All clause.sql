select *
from movies
where imdb_rating > ANY (select imdb_rating from movies where studio like "marvel studios")

select *
from movies
where imdb_rating > ALL (select imdb_rating from movies where studio like "marvel studios")