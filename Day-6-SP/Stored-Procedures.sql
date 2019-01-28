alter procedure helloworld
as
BEGIN
print 'Hello, World from the .NET Boot Camp SQl Swever topic !';
select 'This is from select';

DECLARE @counter int;
SET @counter = 88;
select @counter;
DECLARE @message nvarchar(80) = 'This is the message text.';
print @message;
END
go
exec helloworld;
go
