SELECT
products.product_name,
round (sum(order_details.unit_price * order_details.quantity * (1 - order_details.discount))) AS SUM
FROM
products INNER JOIN order_details ON products.product_id=order_details.product_id
GROUP BY
products.product_name
ORDER BY
sum(order_details.unit_price * order_details.quantity * (1 - order_details.discount))
LIMIT 10;