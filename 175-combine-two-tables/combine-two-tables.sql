# Write your MySQL query statement below
select firstname, lastname, 
case 
    when city is null then null
    else city
end as city,
case 
    when state is null then null
    else state
end as state
from person p left join address a on p.personid=a.personid;
