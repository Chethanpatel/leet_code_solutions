# Write your MySQL query statement below
WITH temp as
(
    SELECT *,
          COUNT(class) as class_count
    FROM Courses 
    GROUP BY class
)

SELECT class
FROM temp
WHERE class_count > 4