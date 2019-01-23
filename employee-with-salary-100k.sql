select Firstname, Lastname, j.Id, Salary
from job j
join Employee e
	on e.JobId = j.Id
where j.Salary >= 100000
order by Firstname