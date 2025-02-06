select m.title,
case
 when unit = "billions" then (revenue * 1000)
 else (revenue)
end as revenue_mil,
f.currency, 
case
 when unit = "Billions" then ("Millions")
 else ("Millions")
end as unit_mil
from movies m
join languages l
on (m.language_id=l.language_id) 
join financials f
on (f.movie_id=m.movie_id)
where name = "hindi"
order by revenue_mil desc