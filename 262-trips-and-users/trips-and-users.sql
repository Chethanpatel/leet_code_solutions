# Write your MySQL query statement below

-- with client_info as (
--     select  c.id, c.client_id, c.driver_id, c.city_id, c.status, c.request_at, banned as client_banned, role as client_role from trips c left join users u on c.client_id = u.users_id
-- ),
-- driver_info as (
--     select d.id, d.client_id, d.driver_id, d.city_id, d.status, d.request_at, u.banned as driver_banned, u.role as driver_role from trips d left join users u on d.driver_id = u.users_id
-- ), 

-- -- c.id, c.client_id, c.driver_id, c.city_id, c.status, c.request_at, banned as client_banned, role as client_role, d.banned as driver_banned, role as driver_role
-- agg_table as (
-- select c.id as id, c.client_id, client_banned, client_role, c.driver_id, driver_banned, driver_role, c.city_id, c.status, c.request_at
-- from client_info c
-- join driver_info d 
-- on c.id = d.id),

-- res as (
-- select request_at as Day, 
-- round(count( case when client_banned = 'No' and driver_banned ='No' and status like 'cancelled%' then 1 end)*1.0 / count( case when client_banned = 'No' and driver_banned ='No' then 1 end), 2) as cancel_rate
-- from agg_table
-- where request_at between "2013-10-01" and "2013-10-03"
-- group by request_at
-- having count(*) > 1)

-- select Day, 
--     case when cancel_rate is not null then cancel_rate else 0 end as "Cancellation Rate"
-- from res; 

 SELECT Request_at as Day,
        ROUND(COUNT(IF(Status != 'completed', TRUE, NULL)) / COUNT(*), 2) AS 'Cancellation Rate'
 FROM Trips
 WHERE (Request_at BETWEEN '2013-10-01' AND '2013-10-03')
       AND Client_id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes')
       AND Driver_id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes')
 GROUP BY Request_at;



