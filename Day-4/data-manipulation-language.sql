/* Data Manipulation Language
    
	Delete from tablename {where...} ***should always have where clause!!!***
	Insert into tablename (col1,col2,...) values(val1,val2,...) ***be mindful of type of data string vs number***
	Update set col1 = val1, col2 = val2 ... {where...}
*/

--select 'O''Brian', 'ABC', 123.45
--select '2019-01-24 00:00:00.000' = '2019-01-24 00:00:00.001'

	--DELETE-- Delete from tablename {where...} ***should always have where clause!!!***
/*
delete from Orders where Id in (
select o.Id
from Orders o
join Customers c
	on c.Id = o.CustomerId
where Name like '%BANK%');
*/

	--INSERT-- Insert into tablename (col1,col2,...) values(val1,val2,...) ***be mindful of type of data string vs number***
/*
insert into Customers 
	(Name, City, State, Sales, Active) 
	values
	('Kellan Inc.', 'Mason', 'OH', 2.01, 1);

	select * from Customers
*/

/*
insert into Orders
	(CustomerId, Date, Description)
	values
	(36, '2019-01-24', 'My first real order');

	select * from orders;
*/

/* insert into Orders
	(CustomerId, Date, Description)
	values
	(36, getdate(), 'With Getdate()');

	select * from orderlines;
*/

/*
insert into OrderLines
	(OrdersId, Product, Quantity, Price)
	values
	(29, 'Fo-Lex', .5, 2.01);

	select * from orders;
*/

/*
new customer Max Tech Training in mason OH with sales of 100,000 active 1
add order to max date of Aug 1 2018 description of first max order for widgets
add order line for 1 echo at 99.99 & 1 echo dot at 39.99 to order
*/


/*
insert into Customers 
	(Name, City, State, Sales, Active) 
	values
	('Max Technical Training', 'Mason', 'OH', 100000, 1);

insert into Orders
	(CustomerId, Date, Description)
	values
	(37, '2018-08-01', 'First Max order of widgets');

insert into OrderLines
	(OrdersId, Product, Quantity, Price)
	values
	(30, 'Echo', 1, 99.99),(30, 'Echo Dot', 1, 39.99);

	select * from OrderLines;

	*/

	--UPDATE-- Update set col1 = val1, col2 = val2 ... {where...}
--select top 5 * from Customers

/*
update Customers set 
	sales = sales * 1.1
	where Name = 'Kroger';
*/

select * from Customers 
	where Name like '%C%G%';
 
 update Customers 
 set sales = 50000
	where Name like '%C%G%';

	select * from Customers
	where sales = 50000;