# Write your MySQL query statement below
-- with distinct_salary as (
--     select distinct salary from employee
-- ),
-- salary_counts as (
--     select count(*) as sc from distinct_salary 
-- ),
-- hs as (
--     select salary from distinct_salary where (select sc from salary_counts ) > 1 order by salary desc limit 2
-- ),
-- shs as (
--     select salary from hs order by salary limit 1
-- )
-- select 
-- case
--      when salary is null then null
--      else salary
-- end as SecondHighestSalary 
-- from shs;

select max(salary) as SecondHighestSalary 
from employee
where salary < (select max(salary) from employee);
