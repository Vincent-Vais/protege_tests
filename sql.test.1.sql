-- Based on the test database, the database already has 3 tables, customers, products, and purchases
-- An example: Select a as column_1, b as column_2 from ...

-- Create a Sql Select Statement in MSSql or MySql with 2 columns: client_name, number_of_purchases
SELECT name as 'client_name', COUNT(*) as 'number_of_purchases'
FROM customers 
JOIN purchases ON customers.id = purchases.customer_id 
GROUP BY purchases.customer_id;