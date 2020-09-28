-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...

-- Create a Sql Select Statement in MSSql or MySql with 2 columns: client_name, sum_of_purchases

SELECT customers.name as 'client_name', SUM(price) as 'sum_of_purchases'
FROM purchases
JOIN customers ON purchases.customer_id = customers.id
JOIN products ON purchases.product_id = products.id
GROUP BY purchases.customer_id;