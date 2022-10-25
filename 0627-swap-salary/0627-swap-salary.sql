# Write your MySQL query statement below

UPDATE Salary
set sex = 
    case 
        when sex = 'm' then 'f'
        else 'm'
    end