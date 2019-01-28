--select * 
--from Customers c
--left join orders o  -- (inner join = join)  (outer join = left join)
--	on c.Id = o.CustomerId -- matches 'customers' PK to 'orders' FK
--	where o.CustomerId is null -- show all customers without orders

--select *
--from Customers 
--where sales >= 50000 and sales < 60000 -- pay attention when  to use 'and' vs 'or'

--select *
--from Customers
--where City != 'Cincinnati' -- '!=' and '<>' is the symbol for 'not equal'

--where statement practice
-- _ underscore matches exactly 1 character
-- % percent matches any num of chars even zero
-- any other characters must match exactly

--select *
--from Customers
--where City in ('Cincinnati','Columbus')
--where sales between 50000 and 60000 -- between includes top and bottom limit
--where Name like 'C%' -- C first letter of name, % for any following letters
--order by Name

select *
from Customers
where Name like '%BANK%' -- wrapped with % so it matches BANK and accepts all other chars
