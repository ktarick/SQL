DECLARE @cnt int = 0;
while @cnt < 10
	BEGIN
		PRINT CONCAT('This line is printed ', @cnt + 1, ' times.')
		SET @cnt = @cnt + 1;
	END