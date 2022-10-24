# Write your MySQL query statement below 
select w.id 
from weather w
join weather x
on DATEDIFF(w.recordDate, x.recordDate) = 1
        AND w.Temperature > x.Temperature

