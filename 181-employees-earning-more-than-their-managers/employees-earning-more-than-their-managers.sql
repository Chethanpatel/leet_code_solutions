# Write your MySQL query statement below
with managers_info as (
    select id as manager_id, name as manager_name, salary as manager_salary from employee where id in (select managerid from employee)
)

select name as Employee from employee e join managers_info m on e.managerid = m.manager_id
where manager_salary < salary;