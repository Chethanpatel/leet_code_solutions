# Write your MySQL query statement below
with dup_emails as (
    select email, count(*) as email_count from person group by 1 
)

select email as Email from dup_emails where email_count > 1;
