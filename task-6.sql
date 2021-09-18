SELECT
customers.company_name,
count (orders.order_id) AS orders,
string_agg (CAST (orders.order_id AS TEXT), ',') AS order_ids
FROM
customers INNER JOIN orders ON customers.customer_id = orders.customer_id
WHERE
customers.country LIKE '%USA%'
GROUP BY
customers.company_name
HAVING
count (orders.order_id) < 5
ORDER BY
count (orders.order_id),
customers.company_name; 