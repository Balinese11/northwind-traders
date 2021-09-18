SELECT customers.country, COUNT(customers.customer_id) AS "number_of_customers"
FROM customers
GROUP BY country
HAVING COUNT(customer_id) > 5
ORDER BY number_of_customers DESC;