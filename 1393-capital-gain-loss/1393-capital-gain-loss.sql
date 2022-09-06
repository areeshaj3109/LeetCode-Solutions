# Write your MySQL query statement below
with result as
(select stock_name, 
    sum(price) - lag(sum(price)) over (partition by stock_name) as capital_gain_loss
from stocks
group by stock_name, operation)

select stock_name, capital_gain_loss
from result
where capital_gain_loss is not null

