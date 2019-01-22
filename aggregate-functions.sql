select 
format(sum(Sales), 'C') as 'Total Sales', 
format(avg(sales), 'C') as 'Average Sales', 
format(min(sales), 'C') as 'Lowest Sales', 
format(max(sales), 'C') as 'Highest Sales',
count(*) as 'Total Customers' 
from customers;