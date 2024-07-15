WITH ranked_deliveries AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date, customer_pref_delivery_date) AS row_num
    FROM
        Delivery
)
SELECT
    ROUND(100 * ((SUM(CASE WHEN customer_pref_delivery_date = order_date THEN 1 ELSE 0 END) / COUNT(*))),2) AS immediate_percentage 
FROM
    ranked_deliveries
WHERE
    row_num = 1
ORDER BY
    customer_id ASC, order_date ASC, customer_pref_delivery_date ASC;
