create procedure InsertCustomer
	@Name nvarchar(30),
	@City nvarchar(30),
	@State nchar(2)
	as
BEGIN 
	IF @State not in ('OH','IN','KY')
		BEGIN
			PRINT 'State must be OH, IN, KY'
			RETURN 1;
		END
	insert into Customers
		(Name, City, State, Sales)
	values
		(@Name, @City, @State, 0);
	if @@ROWCOUNT != 1
		BEGIN
			PRINT 'The insert failed.'
			RETURN 2;
		END
	PRINT 'Insert Successfull'
	RETURN 0;
END
go
EXEC InsertCustomer 'ACME Mfg.', 'Gray', 'IN'
go