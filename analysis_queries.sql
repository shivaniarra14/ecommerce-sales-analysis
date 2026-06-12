//total revenue
SELECT SUM(p.price * oi.quantity) as 
total_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id;

//total revenue

SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

//customer spending

SELECT c.customer_name,
       SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id
GROUP BY c.customer_name;

//monthly sales
SELECT MONTH(order_date) AS month,
       COUNT(order_id) AS orders_count
FROM orders
GROUP BY MONTH(order_date);