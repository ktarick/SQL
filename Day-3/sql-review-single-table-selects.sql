--select count(*) from customers;
--select * from customers;
--select Id, Name, City, State, Sales, Active from customers; same as above just specifying order of columns
--select Name, City from customers;
--select Name as 'Customer Name', city from customers; 
--select * from customers where city = 'Cleveland'; where clause used to specify search

--select * from customers where city = 'Cleveland' or city = 'Columbus';
--select * from customers where city in ('Cleveland','Columbus'); same as above just neater code

--select * from customers order by sales desc; ordered by sales in descending sequence
--select * from customers where city = 'Cincinnati' order by sales desc; same as above just for Cinci

