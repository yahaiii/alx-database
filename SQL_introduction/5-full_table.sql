-- This command will print the full description of the table `first_table` from the database `hbtn_0c_0` in your MySQL server.

-- Check if the table exists
SHOW TABLES LIKE 'first_table';

-- If the table exists, print the CREATE TABLE statement
IF EXISTS (
  SELECT *
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_NAME = 'first_table'
  AND TABLE_SCHEMA = 'hbtn_0c_0'
)
THEN
  SHOW CREATE TABLE hbtn_0c_0.first_table;
ELSE
  -- The table does not exist, so print an error message
  SELECT 'The table `first_table` does not exist.';
END IF;
