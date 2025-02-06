select * from movies
where imdb_rating in (
(select max(imdb_rating)from movies),
(select min(imdb_rating)from movies)
)