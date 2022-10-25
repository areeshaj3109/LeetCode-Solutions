# Write your MySQL query statement below

with res as (select *, row_number() over (partition by actor_id, director_id) as rn
from ActorDirector)

select actor_id,director_id
from res
where rn = 3
