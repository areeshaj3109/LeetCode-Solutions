# Write your MySQL query statement below
with res as
(
    select *, dense_rank() over (partition by player_id order by event_date) as ranked
    from Activity
)

select player_id, event_date as first_login
from res
where ranked = 1
