select c.Name as 'Customer', count(*) as 'Number Ordered'
from OrderLines ol
join Orders o
	on o.Id = ol.OrdersId 
join customers c
	on c.Id = o.CustomerId
where ol.Description = 'Rolex'
group by c.Name
order by c.Name