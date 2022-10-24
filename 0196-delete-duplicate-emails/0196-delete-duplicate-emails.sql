# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

with r as(
    select *, 
dense_rank() over (partition by email order by id) as 'ranked'
from Person
    )
    
delete from Person
where id in (select id from r where ranked > 1)

