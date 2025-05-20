-- Use the desired database
USE MyDatabase;
GO

-- ========================================
-- String Manipulation Examples on 'customers' Table
-- ========================================

-- 1. Concatenate first_name and country
-- Also demonstrate use of LOWER and UPPER functions
SELECT 
    first_name,
    country,
    CONCAT(first_name, '  ', country) AS name_country,  -- Concatenates first_name and country with two spaces
    LOWER(first_name) AS lower_name,                    -- Converts first_name to lowercase
    UPPER(first_name) AS upper_name                     -- Converts first_name to uppercase
FROM customers;
GO

-- 2. Detect rows with extra spaces in first_name (leading/trailing)
-- TRIM removes whitespace; compare original with trimmed to find inconsistencies
SELECT 
    first_name
FROM customers
WHERE first_name != TRIM(first_name);
GO

-- 3. Remove dashes from a phone-like string using REPLACE
SELECT
    '123-456-788' AS original_string,
    REPLACE('123-456-788', '-', '') AS cleaned_string;  -- Removes all hyphens
GO

-- 4. Change file extension from .txt to .csv using REPLACE
SELECT
    'report.txt' AS old_filename,
    REPLACE('report.txt', '.txt', '.csv') AS new_filename;
GO

-- 5. Retrieve customers' first names after removing the first character
-- Uses TRIM to clean whitespaces, SUBSTRING to remove the first character
-- LEN gets the original string length; starts from 2nd char up to length
SELECT 
    first_name,
    SUBSTRING(TRIM(first_name), 2, LEN(TRIM(first_name))) AS trimmed_sub_name
FROM customers;
 
