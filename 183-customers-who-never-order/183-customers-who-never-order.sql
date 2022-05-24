# Write your MySQL query statement below
select Customers.name as Customers
from Customers 
where customers.id not in
(
    select customerId from orders
);
