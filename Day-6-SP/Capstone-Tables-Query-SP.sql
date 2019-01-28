alter procedure RequestQuery
	@RequestDescription nvarchar (80)
as 
	BEGIN
		select r.Description, r.Status, CONCAT(u.Firstname, ' ', u.Lastname) as 'Full Name',
			v.Name, p.Name, rl.Quantity, p.Price, rl.Quantity * p.Price as 'Line Total'
		from requests r
		join users u
			on r.usersid = u.id
		join Requestlines rl
			on r.id = rl.RequestsId
		join Products p
			on rl.ProductsId = p.Id
		join Vendors v
			on p.VendorsId = v.Id
		where r.Description like CONCAT('%', @RequestDescription, '%');
	END
go
EXEC RequestQuery '';
go