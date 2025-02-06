select a.actor_id, a.name, count(*) as movies_count
from movie_actor ma
join actors a
on a.actor_id=ma.actor_id
group by a.actor_id
order by movies_count desc


select *,
(select count(*) from movie_actor where actor_id= actors.actor_id) as movies_count
from actors
order by birth_year desc

