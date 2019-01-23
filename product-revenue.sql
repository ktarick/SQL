select ol.Description as 'Product',
count(*) as 'Units Sold',
Sum(Quantity*Price) as 'Revenue'
from OrderLines ol
group by ol.Description
order by Sum(Quantity*Price) desc