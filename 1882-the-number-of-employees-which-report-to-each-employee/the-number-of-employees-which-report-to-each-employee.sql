# Write your MySQL query statement below

WITH temp AS
(
    SELECT *
    FROM Employees 
)
select  e.employee_id, e.name , 
        count(*) as reports_count,
        round(avg(t.age)) as average_age 
from temp t inner join Employees e on  t.reports_to = e.employee_id
group by t.reports_to
ORDER BY e.employee_id


