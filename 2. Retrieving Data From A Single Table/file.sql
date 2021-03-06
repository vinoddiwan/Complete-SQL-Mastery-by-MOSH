-- AND, OR and NOT operator
SELECT *
FROM customers 
WHERE birthdate > '1990-01-01' AND points > 1000;

SELECT *
FROM customers 
WHERE birthdate > '1990-01-01' OR points > 1000;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' 
	    OR points > 1000
      AND state = 'VA';
-- or
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR
	    (points > 1000 AND state = 'VA');

SELECT *
FROM customers
WHERE NOT (birth_date > '1990-01-01' OR points > 1000);
-- or
SELECT *
FROM customers
WHERE birth_date <= '1990-01-01' AND points <= 1000;

-- Excercise
SELECT * FROM order_item 
WHERE order_id =6
      AND unit_price*quantity > 30;

