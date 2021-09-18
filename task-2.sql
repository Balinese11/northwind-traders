SELECT 
categories.category_name AS "category", 
COUNT(products.category_id) AS "number_of_products"
FROM products 
JOIN categories ON categories.category_id=products.category_id 
GROUP BY category_name
ORDER BY number_of_products DESC, category ASC;
	