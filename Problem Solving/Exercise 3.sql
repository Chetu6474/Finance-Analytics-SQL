select * ,
Round(((revenue - budget)/100),1) as profit_percent
from financials