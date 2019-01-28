alter procedure UpdateCustomers
	@Id int,
	@Name nvarchar (30),
	@City nvarchar (30),
	@State nchar (2)
as
BEGIN
	If @Id is null
		BEGIN
			PRINT 'Enter ID';
			RETURN 1;
		END
	IF @State not in ('OH','IN','KY')
		BEGIN
			PRINT 'State must be in OH, IN, KY';
			return 1;
		END
	UPDATE Customers SET 
		Name = @Name, 
		City = @City, 
		State = @State
		where Id = @Id
	IF @@ROWCOUNT != 1
		BEGIN
			PRINT 'The Update Failed';
			RETURN 2;
		END
	PRINT 'Update Successfull';
	RETURN 0;
END
go
EXEC UpdateCustomers 41, 'ACME Manufacturing.', 'Canton', 'OH'
go