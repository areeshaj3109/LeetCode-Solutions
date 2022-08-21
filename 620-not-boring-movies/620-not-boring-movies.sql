# Write your MySQL query statement below
select *
from Cinema c
where c.id % 2 != 0 and c.description NOT IN ('boring') 
ORDER BY c.rating desc;