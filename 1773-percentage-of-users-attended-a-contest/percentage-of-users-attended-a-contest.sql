WITH ContestUsers AS (
    SELECT contest_id, COUNT(DISTINCT user_id) AS num_users
    FROM Register
    GROUP BY contest_id
),
TotalUsers AS (
    SELECT COUNT(DISTINCT user_id) AS total_users
    FROM Users
)
SELECT
    c.contest_id,
    ROUND((c.num_users / t.total_users) * 100, 2) AS percentage
FROM
    ContestUsers c
JOIN
    TotalUsers t 
ORDER BY
    percentage DESC,
    c.contest_id;
