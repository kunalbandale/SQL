-- ========================================
-- Number Functions in SQL Server
-- ========================================

SELECT 
    3.516 AS original_number,                           -- The original decimal number
    ROUND(3.516, 2) AS rounded_to_2_decimals,           -- Rounds to 2 decimal places (3.52)
    ROUND(3.516, 3) AS rounded_to_3_decimals,           -- Rounds to 3 decimal places (3.516, no change)
    ROUND(3.516, 1) AS rounded_to_1_decimal,            -- Rounds to 1 decimal place (3.5)
    ABS(-10) AS absolute_value                          -- Returns the absolute value of -10 (10)
GO
