select *, quantity * price as 'Line Total'
from OrderLines
where id = (select max(id) from OrderLines);

update orderlines set quantity = 10 where id = 84