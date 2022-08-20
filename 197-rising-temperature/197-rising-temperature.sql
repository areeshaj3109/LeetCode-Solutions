# Write your MySQL query statement below
select a.id as Id
from weather a
join weather b
#on a.id = b.id 
on DATEDIFF(a.recordDate, b.recordDate) = 1
where a.Temperature > b.Temperature;
