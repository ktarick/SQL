-- list orders and which customers

select o.*, c.*, ol.*
from Customers c
join Orders o
on o.CustomerId = c.Id
join OrderLines ol
on ol.OrdersId = o.Id
where c.name = 'Nationwide'
