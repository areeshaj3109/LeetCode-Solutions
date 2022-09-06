# Write your MySQL query statement below
with result as(
select 
    case 
        when (num = lead(num) over (order by id)
        and num = lead(num,2) over (order by id)) then num
        else null
    end as ConsecutiveNums
from logs)
    
select distinct ConsecutiveNums
from result
where ConsecutiveNums is not null
