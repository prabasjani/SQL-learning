USE my_database;

-- Update the specific row by using WHERE
UPDATE employees
SET salary = 1650
WHERE first_name = "Raj"; 

-- Update all the row with same value
UPDATE employees
SET salary = 1600;

-- Delete the specific row by using WHERE
DELETE FROM employees
WHERE first_name = "Raj";

-- Delete all the row 
DELETE FROM employees;

-- For UNDO the last query first set AUTOCOMMIT to off
SET AUTOCOMMIT = OFF;

-- then commit the current changes that means save the current changes
COMMIT;

-- Now delete the entire row by mistake
DELETE FROM employees;

-- Now UNDO the commit => without commit it wont be UNDO
ROLLBACK;		-- It return(UNDO) the commited values

-- DATE AND TIME
CREATE TABLE test(
	joining_date DATE,
    joining_time TIME,
    curr_datatime DATETIME
);

-- These fns are give a value
INSERT INTO test VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW());

-- To manipulate these values
INSERT INTO test VALUES (CURRENT_DATE() + 1, CURRENT_TIME(), NOW());  -- It return Tomorrow
INSERT INTO test VALUES (CURRENT_DATE() - 1, CURRENT_TIME(), NOW());  -- It return Yesterday

SELECT * FROM test;

-- Delete the test table 
DROP TABLE test;
