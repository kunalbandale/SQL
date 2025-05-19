-- Use the 'MyDatabase' for initial operations
USE MyDatabase;

------------------------------------------------------
-- ADVANCED JOINS
------------------------------------------------------

-- LEFT ANTI JOIN
-- Objective: Retrieve all customers who haven't placed any orders.
-- Approach: LEFT JOIN customers with orders, then filter those without matches.
SELECT *
FROM customers AS c
LEFT JOIN orders AS o ON c.id = o.customer_id
WHERE o.customer_id IS NULL;


-- RIGHT ANTI JOIN
-- Objective: Retrieve all orders that do not have matching customers.
-- Approach: RIGHT JOIN customers with orders, then filter those without matches.
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o ON c.id = o.customer_id
WHERE c.id IS NULL;


-- FULL ANTI JOIN
-- Objective: Retrieve both customers without orders and orders without customers.
-- Approach: FULL OUTER JOIN customers and orders, then filter where no match exists.
SELECT *
FROM orders AS o
FULL JOIN customers AS c ON c.id = o.customer_id
WHERE o.customer_id IS NULL OR c.id IS NULL;


------------------------------------------------------
-- CHALLENGE
------------------------------------------------------

-- Objective: Retrieve all customers along with their orders
-- but only for those who have placed at least one order.
-- Constraint: Do not use INNER JOIN.
-- Approach: Use FULL JOIN and filter where both sides have matching records.
SELECT *
FROM orders AS o
FULL JOIN customers AS c ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL AND c.id IS NOT NULL;


------------------------------------------------------
-- CROSS JOIN
------------------------------------------------------

-- Objective: Generate all possible combinations of customers and orders.
-- Use Case: Useful for scenarios like product recommendations or permutations.
SELECT *
FROM customers
CROSS JOIN orders;


------------------------------------------------------
-- MULTI-TABLE JOINS (Using SalesDB)
------------------------------------------------------

-- Switch to the SalesDB database
USE SalesDB;

-- Objective: Retrieve complete details for each order, including:
--   - Order ID
--   - Customer's full name
--   - Product name
--   - Sales amount
--   - Product price
--   - Salesperson’s full name
-- Tables involved: Orders, Customers, Products, Employees

SELECT 
    o.OrderID,
    o.Sales,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    p.Product AS ProductName,
    p.Price,
    e.FirstName AS SalespersonFirstName,
    e.LastName AS SalespersonLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e ON o.SalesPersonID = e.EmployeeID;

