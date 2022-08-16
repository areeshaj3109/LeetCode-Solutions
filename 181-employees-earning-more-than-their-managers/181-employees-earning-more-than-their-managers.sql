select e.name as Employee
from Employee e
inner join Employee m
ON e.managerID = m.id 
where e.salary > m.salary