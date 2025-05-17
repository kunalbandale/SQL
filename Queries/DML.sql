USE MyDatabase;

-- ----------------------------------------------------------
-- DML: Data Manipulation Language
-- ----------------------------------------------------------
-- These commands allow manipulation of data inside the database
-- Includes: INSERT, UPDATE, DELETE, TRUNCATE
-- ----------------------------------------------------------

-- ----------------------------------------------------------
-- INSERT Command
-- ----------------------------------------------------------

-- 1) Manual Entry using VALUES
-- RULE: Number of columns must match number of values

INSERT INTO customers (id, first_name, country, score) 
VALUES 
    (6, 'kunal', 'India', 1000),
    (7, 'ramesh', 'Nepal', NULL);

-- View all customers
SELECT * FROM customers;

-- NOTE:
-- - Always list columns explicitly for clarity and maintainability
-- - Ensure the order of values matches the column order
-- - You can skip column names ONLY if you're inserting values for ALL columns

-- ----------------------------------------------------------
-- 2) INSERT Using SELECT
-- Copy data from one table into another using SELECT
-- Useful for transferring data between tables
-- ----------------------------------------------------------

-- Copy data from 'customers' to 'persons' (with static values for missing fields)
INSERT INTO persons (id, first_name, birth_date, phone)
SELECT 
    id,
    first_name,
    NULL AS birth_date,
    'Unknown' AS phone
FROM customers;

-- View inserted data in persons
SELECT * FROM persons;

-- ----------------------------------------------------------
-- UPDATE Command
-- Modify existing data in a table
-- ----------------------------------------------------------

-- Syntax:
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- CAUTION:
-- Always use WHERE clause to avoid updating all rows unintentionally

-- Update score of customer with ID = 6
UPDATE customers 
SET score = 0
WHERE id = 6;

-- Update score and country of customer with ID = 7
UPDATE customers 
SET 
    score = 0,
    country = 'UK'
WHERE id = 7;

-- Update all rows with NULL score to 0
UPDATE customers 
SET score = 0
WHERE score IS NULL;

-- View updated data
SELECT * FROM customers;

-- ----------------------------------------------------------
-- DELETE Command
-- Removes specific rows from a table
-- ----------------------------------------------------------

-- Syntax:
-- DELETE FROM table_name
-- WHERE condition;

-- CAUTION:
-- Omitting WHERE will delete all rows!

-- Delete customers with ID > 5
DELETE FROM customers
WHERE id > 5;

-- View remaining customers
SELECT * FROM customers;

-- Delete all rows from 'persons' table
DELETE FROM persons;

-- ----------------------------------------------------------
-- TRUNCATE Command
-- Quickly removes ALL data from a table
-- Faster than DELETE and doesn't log individual row deletions
-- Cannot be rolled back in most RDBMS
-- ----------------------------------------------------------

-- Truncate the persons table
TRUNCATE TABLE persons;
