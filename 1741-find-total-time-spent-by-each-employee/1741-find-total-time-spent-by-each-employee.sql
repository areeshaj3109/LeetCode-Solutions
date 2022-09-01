# Write your MySQL query statement below
with result as
(
    select *, (out_time - in_time) as diff
    from employees
)

select event_day as day, emp_id, sum(diff) as total_time
from result 
group by event_day, emp_id