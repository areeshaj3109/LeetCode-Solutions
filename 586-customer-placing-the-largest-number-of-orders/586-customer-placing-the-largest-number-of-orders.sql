# Write your MySQL query statement below
select main.d as customer_number
from (select count(o.order_number) as c, o.customer_number as d
from Orders o
group by d) as main
order by main.c desc
limit 1;



