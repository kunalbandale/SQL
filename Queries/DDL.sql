-- Switch to the desired database
USE MyDatabase;

-- ============================================================================
-- DDL (DATA DEFINITION LANGUAGE)
-- ============================================================================

-- ============================================================================
-- CREATE TABLE
-- ============================================================================
/*
   Description:
   Create a new table named 'persons' with the following columns:
   - id:          Integer, Not Null, Primary Key
   - person_name: Variable character field (max 50 chars), Not Null
   - birth_date:  Date, Nullable
   - phone:       Variable character field (10 digits), Not Null
*/

CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(10) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY(id)
);

-- View the contents of the newly created table (should be empty initially)
SELECT * FROM persons;

-- ============================================================================
-- ALTER TABLE - ADD COLUMN
-- ============================================================================
/*
   Description:
   Add a new column 'email' to the 'persons' table.
   - email: Variable character field (max 50 chars), Not Null
   Note: New columns are always added at the end of the table definition.
*/

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

-- ============================================================================
-- ALTER TABLE - DROP COLUMN
-- ============================================================================
/*
   Description:
   Remove the 'phone' column from the 'persons' table.
   This is a destructive operation and any existing data in the column will be lost.
*/

ALTER TABLE persons
DROP COLUMN phone;

-- ============================================================================
-- DROP TABLE
-- ============================================================================
/*
   Description:
   Permanently delete the 'persons' table from the database.
   All data and structure will be lost.
*/

DROP TABLE persons;
