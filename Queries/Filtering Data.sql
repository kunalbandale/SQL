-- Use the target database
USE MyDatabase;

-- =======================================================
--                 COMPARISON OPERATORS
-- =======================================================
/*
=    : Checks if two values are equal
!=   : Checks if two values are not equal
<>   : Alternative syntax to !=
>    : Greater than
>=   : Greater than or equal to
<    : Less than
<=   : Less than or equal to
*/

-- Retrieve all customers from Germany
SELECT *
FROM customers 
WHERE country = 'Germany';

-- Retrieve all customers who are not from Germany
SELECT *
FROM customers 
WHERE country != 'Germany';

-- Alternatively using <>
SELECT *
FROM customers 
WHERE country <> 'Germany';

-- Retrieve all customers with a score greater than 500
SELECT *
FROM customers
WHERE score > 500;

-- Retrieve all customers with a score of 500 or more
SELECT *
FROM customers
WHERE score >= 500;

-- Retrieve all customers with a score less than 500
SELECT *
FROM customers
WHERE score < 500;

-- Retrieve all customers with a score less than or equal to 500
SELECT *
FROM customers
WHERE score <= 500;

-- =======================================================
--                 LOGICAL OPERATORS
-- =======================================================
/*
AND : All conditions must be true
OR  : At least one condition must be true
NOT : Excludes matching values
*/

-- Retrieve all customers who are from the USA and have a score greater than 500
SELECT * 
FROM customers
WHERE country = 'USA' AND score > 500;

-- Retrieve all customers who are either from the USA OR have a score greater than 500
SELECT * 
FROM customers
WHERE country = 'USA' OR score > 500;

-- Retrieve all customers with a score not less than 500 (i.e., >= 500)
SELECT *
FROM customers
WHERE NOT score < 500;

-- =======================================================
--                 RANGE OPERATOR: BETWEEN
-- =======================================================
/*
BETWEEN: Selects values within a given inclusive range.
Syntax: column BETWEEN lower_bound AND upper_bound
*/

-- Retrieve all customers whose score is between 100 and 500
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

-- Equivalent query using >= and <=
SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;

-- =======================================================
--           MEMBERSHIP OPERATOR: IN, NOT IN
-- =======================================================
/*
IN     : Matches any value in a list
NOT IN : Excludes all values in a list
*/

-- Retrieve all customers from either Germany or USA
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');

-- Retrieve all customers not from Germany or USA
SELECT *
FROM customers
WHERE country NOT IN ('Germany', 'USA');

-- =======================================================
--           SEARCH OPERATOR: LIKE (Pattern Matching)
-- =======================================================
/*
LIKE is used for pattern matching with the following wildcards:
% : Represents zero or more characters
_ : Represents a single character
*/

-- Find all customers whose first name starts with 'M'
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n' (case-sensitive)
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first name has 'r' in the 4th position (i.e., ___r%)
SELECT *
FROM customers
WHERE first_name LIKE '___r%';
