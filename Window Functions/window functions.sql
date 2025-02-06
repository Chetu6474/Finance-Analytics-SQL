SELECT *,
amount*100/sum(amount) over(partition by category) as pct
FROM random_tables.expenses
order by category;


select sum(amount) from expenses #65800


