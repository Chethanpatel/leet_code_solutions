# Write your MySQL query statement below

WITH 

salary_tbl AS (
  SELECT 'High Salary' AS category, 0 AS accounts_count
  UNION ALL
  SELECT 'Low Salary', 0
  UNION ALL
  SELECT 'Average Salary', 0
),

cheth AS (
select 
 case
    when income < 20000 then 'Low Salary'
    when income >= 20000 and income <= 50000 then 'Average Salary'
    else 'High Salary'
 end as category,
 count(*) as accounts_count
 from accounts
 group by category
)



select s.category, COALESCE(c.accounts_count , 0) as accounts_count  from salary_tbl s left join cheth  c on s.category = c.category











