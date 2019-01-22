-- Total Sales from each city

select City, sum(sales) as 'Total Sales' --Total sales
from customers --table used
group by City --1 row output per city
having sum(sales) >= 600000;