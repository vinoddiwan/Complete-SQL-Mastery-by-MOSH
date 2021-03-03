SELECT * FROM orders;
SELECT * FROM customers;

-- Retrieving data of customers who orders using JOIN
SELECT * 
FROM orders
INNER JOIN customers
	ON orders.customer_id = customers.customer_id;

-- limiting columns
SELECT order_id, first_name, last_name 
FROM orders
INNER JOIN customers
	ON orders.customer_id = customers.customer_id

-- Using Alias
SELECT order_id, o.customer_id, first_name
FROM orders o
INNER JOIN customers c
	ON o.customer_id = c.customer_id;

------------------------------------------------------
-- Exercise
SELECT * FROM order_items;
SELECT * FROM products;


------------------------------------------------------
-- Joining across Database

-- sql_store DB selected
SELECT *
FROM order_items oi
JOIN sql_inventory.products p         -- sql_inventory external DB
     ON oi.product_id = p.product_id;

-- sql_inventory DB selected
SELECT *
FROM sql_store.order_items oi         -- sql_store external DB
JOIN products p
	ON oi.product_id = p.product_id;





