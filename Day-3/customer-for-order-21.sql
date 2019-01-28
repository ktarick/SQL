select c.Name 
from orders o
	join customers c
		on c.Id = o.CustomerId
where o.Id = 21;