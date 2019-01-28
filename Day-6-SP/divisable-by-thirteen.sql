alter procedure DivisableByThirteen
	@TheNumber int 
as
BEGIN
	IF @TheNumber < 0
		BEGIN
			PRINT 'Number must be GT 0'
			return 1;
		END
	DECLARE @modulus int;
	SET @modulus = @TheNumber % 13
	IF @modulus = 0
		BEGIN
			PRINT 'The number is evenly divisable by 13';
		END
	ELSE
		BEGIN
			PRINT 'The number is NOT evenly divisable by 13'
		END
END
go
exec DivisableByThirteen 12350;
go