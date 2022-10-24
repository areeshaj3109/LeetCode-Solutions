# Write your MySQL query statement below
with result as(
    select *, 
    dense_rank() over (partition by departmentId order by salary desc) as 'ranked'

    from Employee
)



select d.name as Department, r.name as Employee, r.salary as Salary
from result r
join Department d
on r.departmentId = d.id
where ranked = 1
