-- display individual customers with sales
-- greater the the average of all customer sales

--select avg(sales) from customers; --56951

select * from customers
	where sales > (select avg(sales) from customers);-- sub select used to generate value within select