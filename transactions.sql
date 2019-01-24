begin transaction

	update Customers set Sales = 200 where name like 'Max%'; 
	
rollback	-- or commit depending on success of transaction

select * from Customers where name like 'Max%';