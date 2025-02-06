select m.movie_id, title, budget, revenue, currency, unit, 
case
 when unit = "thousands" then ROUND((revenue-budget)/1000,1)
 when unit = "Billions" then ROUND((revenue-budget)*1000,1)
 else ROUND((revenue-budget),1)
end as profit_mil
FROM movies m
join financials f
on (m.movie_id=f.movie_id)
where industry like "bollywood"
order by profit_mil desc;