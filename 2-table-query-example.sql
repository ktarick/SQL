--select  * from customers where Id = 1;
--select top 1 * from orders;

select o.Date as 'Order Date', o.Description as 'Description', c.Name as 'Customer Name', 
	ol.Product, ol.Description, ol.Price, ol.Quantity
from orders o
join customers c -- 'join' allows use of second table
on o.customerid = c.id -- 'on' matches any 2 columns that match with same value (usually PK & FK)
join OrderLines ol
on ol.OrdersId = o.Id
--where orders.id = 1;
order by o.customerid
