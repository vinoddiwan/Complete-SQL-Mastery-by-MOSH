USE sql_store

-- find products that are more expensive than Lettuce (id=3)
SELECT *
FROM products
WHERE unitprice > (
      SELECT unit_price
      FROM products
      WHERE product_id = 3
      );


