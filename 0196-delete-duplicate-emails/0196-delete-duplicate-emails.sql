# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

with r as(
    select *, 
dense_rank() over (partition by email order by id) as 'ranked'
from Person
    )
    
delete p2 from Person p1, Person p2
where p1.Email = p2.Email and p1.Id < p2.Id

