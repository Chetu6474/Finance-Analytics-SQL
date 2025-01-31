select *,
	sum(amount) over(partition by category order by date) as total_expense_till_date
from expenses
order by category, date