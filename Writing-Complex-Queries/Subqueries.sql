USE sql_store; -- DB

-- find products that are more expensive than Lettuce (id=3)
SELECT *
FROM products
WHERE unitprice > (
      SELECT unit_price
      FROM products
      WHERE product_id = 3
      );


-- EXERCISE
-- IN sql_hr database, find employees who earn more than average
USE sql; -- DB

SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);



-- Writing Subqueries Using IN Operator
USE sql_store;

-- Find the products that have never been ordered
-- observe ordered_items and products table
SELECT *
FROM products
WHERE product_id NOT IN (
      SELECT DISTINCT product_id
      FROM order_items
      );

-- Exercise
-- Find clients without invoices
SELECT 
	client_id, name
FROM clients 
WHERE client_id NOT IN
	  (SELECT DISTINCT client_id 
      FROM invoices);

-- subquery vs join
-- Find clients without invoices using join
SELECT *
FROM clients
LEFT JOIN invoices USING(client_id)
WHERE invoice_id IS NULL;








