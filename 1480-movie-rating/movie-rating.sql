# Write your MySQL query statement below
with user_rating as(
    select m.user_id, u.name, count(*) as rating_count
    from movierating m join users u on u.user_id = m.user_id
    group by m.user_id, u.name
),
highestAvgRatedMovie as (
    select mr.movie_id, m.title, avg(rating) as avgrating
    from movierating mr join movies m on mr.movie_id = m.movie_id
    where created_at >= '2020-02-01' AND created_at < '2020-03-01'
    group by mr.movie_id, m.title
    

)
( select name as results from user_rating where rating_count = (select max(rating_count) from user_rating)
order by 1 asc limit 1 ) 
union all
( select title as results from highestAvgRatedMovie where avgrating = (select max(avgrating) from highestAvgRatedMovie) 
order by 1 asc limit 1)

