USE MyDatabase;

-- JOIN IN SQL

-- NO JOIN
/*
Retrieve all data from customers and order
in two different results
*/

SELECT *
FROM customers;

SELECT *
FROM orders;

-- INNER JOIN
-- get all customers along with their orders,
-- but only for customers who have placed an order

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;

-- LEFT JOIN
/*
Get all customers along with their orders,
including those without orders
*/

SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c 
LEFT JOIN orders AS o
ON c.id = o.customer_id;

-- Get all customers along with their 
-- orders, including orders wihtout matching customers
select * from customers;
select * from orders;

SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

-- same task using LEFT JOIN

SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id;


-- FULL JOIN
-- Get all customers and all orders, even if ther's no match
SELECT *
FROM customers
FULL JOIN orders
ON customers.id = orders.order_id;