# Write your MySQL query statement below
SELECT class
from 
    (
        Select class, count(distinct student) as num
        from courses
        group by class
    ) as temp
where num >= 5;