create procedure TopFiveCustomers
as
BEGIN
	select top 5 * from Customers
		order by sales desc;
END
go
exec TopFiveCustomers
go