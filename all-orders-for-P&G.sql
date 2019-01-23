-- all orders for PNG

select *
from customers c
join orders o
on o.customerid = c.id
where c.name = 'P&G';