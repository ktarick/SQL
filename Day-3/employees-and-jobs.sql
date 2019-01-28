--select * from job;
--select * from Employee;

select * --Firstname, Lastname, Description 
from Employee e
join Job j
	on j.Id = e.JobId