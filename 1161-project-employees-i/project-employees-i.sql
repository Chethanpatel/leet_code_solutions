# Write your MySQL query statement below

SELECT PROJECT_ID,
       ROUND(AVG(experience_years), 2) AS average_years
FROM EMPLOYEE E
JOIN PROJECT P ON E.EMPLOYEE_ID = P.EMPLOYEE_ID
GROUP BY P.PROJECT_ID
