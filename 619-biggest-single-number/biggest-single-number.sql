# Write your MySQL query statement below
WITH temp AS
(
    SELECT *, 
         COUNT(num) as cnt
    FROM MyNumbers
    GROUP BY num
)

SELECT MAX(num) as num 
FROM temp
WHERE cnt=1