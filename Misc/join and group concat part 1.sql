SELECT m.title, group_concat(a.name) actors
FROM movies m
join movie_actor ma
on ma.movie_id = m.movie_id
join actors a 
on ma.actor_id = a.actor_id
group by m.movie_id