SELECT
EXTRACT(YEAR FROM orders.order_date) AS year,
EXTRACT(MONTH FROM orders.order_date) AS month,
COUNT(order_details.order_id) AS order_count,
sum(order_details.unit_price * order_details.quantity * (1 - order_details.discount))::INTEGER AS revenue
FROM order_details 
INNER JOIN orders ON orders.order_id=order_details.order_id
WHERE EXTRACT(YEAR FROM orders.order_date) = 1997 
GROUP BY month, year
ORDER BY revenue DESC;