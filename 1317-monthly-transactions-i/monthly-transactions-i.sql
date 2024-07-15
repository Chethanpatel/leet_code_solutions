
SELECT
   CONCAT( YEAR(trans_date), '-' , LPAD(MONTH(trans_date), 2, 0)) AS MONTH,
   country, 
   count(*) as trans_count,
   SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
   SUM(amount) as trans_total_amount,
   SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount 
FROM Transactions
GROUP BY YEAR(trans_date), MONTH(trans_date), country