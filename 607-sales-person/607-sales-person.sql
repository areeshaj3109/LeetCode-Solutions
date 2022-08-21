# Write your MySQL query statement below
SELECT name 
from Salesperson 
where sales_id NOT IN (select DISTINCT sales_id
                 from Orders 
                 where com_id = (select com_id from company where name = 'RED')
                      );