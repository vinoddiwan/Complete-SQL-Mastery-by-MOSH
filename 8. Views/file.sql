USE sql_invoicing; -- DB Selected

SELECT * FROM clients;
SELECT * FROM invoices; -- each client can buy multiple stuff

-- total purchased by each client
SELECT
	  c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING(client_id)
GROUP BY client_id, name;


-- Using Views
CREATE VIEW sales_by_client AS
SELECT
	  c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING(client_id)
GROUP BY client_id, name;


-- Use VIEW as a table
SELECT * 
FROM sales_by_client -- view
ORDER BY total_sales DESC;

-- Filter data in VIEW
SELECT * 
FROM sales_by_client
WHERE total_sales > 500;


-- JOIN on VIEW
SELECT * 
FROM sales_by_client --tb1
JOIN clients USING(client_id); --tb2


----------------------------------------------------------------------------------------------------------------------
--Exercise
SELECT * FROM clients;
SELECT * FROM invoices;

CREATE VIEW clients_balance AS
SELECT c.client_id,
       c.name,
       SUM(invoice_total - payment_total) as balance
FROM clients c
JOIN invoices i using(client_id)
GROUP BY client_id, name;






    
