alter procedure DeleteCustomer
	@Id int = -1
as
BEGIN
	If @Id = -1 
			BEGIN
				PRINT 'Id is Required';
				RETURN 1;
			END
	-- This checks fo the existance of the row to be deleted
	IF NOT EXISTS(SELECT 1 FROM Customers WHERE Id =  @Id) 
		BEGIN
			PRINT 'Id does not Exists';
			RETURN 2;
		END
	DELETE FROM Customers
		where Id = @Id
	IF @@ROWCOUNT != 1
		BEGIN
			PRINT 'The Delete Failed';
			RETURN 3;
		END
	PRINT 'Delete Successfull';
	RETURN 0;
END
go
EXEC DeleteCustomer
go