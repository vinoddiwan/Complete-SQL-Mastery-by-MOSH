
                      -- Group By
SELECT SUM(invoice_total) AS total_sales FROM invoices  -- 2590.60


-- what if we want to total sales of each client
SELECT 
	  client_id, (invoice_total) AS total_sales 
FROM invoices
GROUP BY client_id;   -- Group By


-- apply more filters
SELECT SUM(invoice_total) AS total_sales FROM invoices;
SELECT 
	client_id, (invoice_total) AS total_sales 
FROM invoices
GROUP BY client_id     -- Group By
ORDER BY total_sales DESC;

                  -- Group By Multiple columns and join
SELECT 
	city, 
  state,
	client_id, (invoice_total) AS total_sales 
FROM invoices
JOIN clients USING(client_id)
GROUP BY state, city;
