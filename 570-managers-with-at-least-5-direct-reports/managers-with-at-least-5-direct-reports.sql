SELECT e.name
FROM Employee e
WHERE (
  SELECT COUNT(*)
  FROM Employee AS sub
  WHERE sub.managerId = e.id
) >= 5;
