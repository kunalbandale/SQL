USE MyDatabase;

-- ========================================
-- SECTION 1: SELECT and FROM Clauses
-- ========================================
-- Basic Syntax:
-- SELECT column1, column2, ...
-- FROM table_name;

-- Retrieve all customer data
SELECT *
FROM customers;

-- Retrieve all order data
SELECT *
FROM orders;

-- Retrieve each customer's name, country, and score
SELECT 
    first_name,
    country,
    score
FROM customers;

-- ========================================
-- SECTION 2: WHERE Clause
-- ========================================
-- Filters rows based on a condition
-- Syntax:
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;

-- Customers with a score not equal to 0
SELECT *
FROM customers
WHERE score != 0;

-- Customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany';

-- First name and country of customers from Germany
SELECT 
    first_name,
    country
FROM customers
WHERE country = 'Germany';

-- ========================================
-- SECTION 3: ORDER BY Clause
-- ========================================
-- Sorts the result set
-- Syntax:
-- ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...

-- Customers sorted by highest score first
SELECT *
FROM customers
ORDER BY score DESC;

-- Customers sorted by lowest score first
SELECT *
FROM customers
ORDER BY score ASC;

-- Customers sorted by score (desc), then country (asc)
SELECT *
FROM customers
ORDER BY score DESC, country ASC;

-- ========================================
-- SECTION 4: GROUP BY Clause
-- ========================================
-- Groups rows that have the same values into summary rows
-- Syntax:
-- SELECT column, AGG_FUNC(column)
-- FROM table
-- GROUP BY column;

-- Total score per country
SELECT 
    country, 
    SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Total score and number of customers per country
SELECT 
    country, 
    SUM(score) AS total_score, 
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;

-- ========================================
-- SECTION 5: HAVING Clause
-- ========================================
-- Filters grouped rows based on aggregate conditions
-- Syntax:
-- SELECT column, AGG_FUNC(column)
-- FROM table
-- GROUP BY column
-- HAVING condition;

-- Average score per country, only if avg > 430 and score != 0
SELECT 
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

-- ========================================
-- SECTION 6: DISTINCT Keyword
-- ========================================
-- Removes duplicate values
-- Syntax:
-- SELECT DISTINCT column
-- FROM table;

-- Unique list of countries
SELECT DISTINCT 
    country
FROM customers;

-- ========================================
-- SECTION 7: TOP Clause (or LIMIT)
-- ========================================
-- Limits the number of rows returned
-- Syntax:
-- SELECT TOP N * FROM table;

-- Any 3 customers (arbitrary)
SELECT TOP 3 * 
FROM customers;

-- Top 3 customers with highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Bottom 2 customers based on score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- ========================================
-- SECTION 8: Execution Order vs. Coding Order
-- ========================================
-- Execution Order (Simplified):
-- 1) FROM
-- 2) WHERE
-- 3) GROUP BY
-- 4) HAVING
-- 5) SELECT
-- 6) ORDER BY
-- 7) TOP
-- 8) DISTINCT

-- Summary Query: Top 2 distinct countries with total score > 30
SELECT DISTINCT TOP 2 
    country
FROM customers
WHERE score > 10
GROUP BY country
HAVING SUM(score) > 30
ORDER BY country ASC;

-- ========================================
-- SECTION 9: Multiple Queries and Static Values
-- ========================================

-- Retrieve all customers
SELECT * 
FROM customers;

-- Retrieve all orders
SELECT * 
FROM orders;

-- Static numeric value with alias
SELECT 123 AS static_num;

-- Static string value with alias
SELECT 'Hello' AS static_string;

-- Add static column while selecting other columns
SELECT 
    id,
    'NEW CUST' AS cust_type,
    first_name
FROM customers;

-- Example Query for Execution
SELECT *
FROM customers
WHERE country = 'Germany';
