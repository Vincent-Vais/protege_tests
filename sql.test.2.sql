-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...

-- Create a Sql Select Statement in MSSql or MySql with 2 columns: product_name, number_of_purchases
SELECT name as 'product_name', COUNT(*) as 'number_of_purchases' 
FROM purchases, products 
WHERE purchases.product_id = products.id 
GROUP BY purchases.product_id;