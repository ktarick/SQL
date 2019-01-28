-- orders and lines order 24

select *
from orders o
join OrderLines ol
	on ol.OrdersId = o.Id
where o.id = 24;