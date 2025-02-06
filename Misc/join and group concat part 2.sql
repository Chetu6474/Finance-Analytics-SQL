select a.name actor, group_concat(m.title separator " | ") movies, count(m.title) as movie_count
from actors a
join movie_actor ma
on (a.actor_id=ma.actor_id)
join movies m
on (m.movie_id=ma.movie_id)
group by a.actor_id
order by movie_count desc