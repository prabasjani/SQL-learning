-- To create a database
CREATE DATABASE my_database;

-- To use the database;
USE my_database;

-- To delete the database;
-- DROP DATABASE my_database;

-- To create a table;
CREATE TABLE employees(
	emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(6,2),
    joining_date DATE
);

-- To rename the table;
RENAME TABLE employees TO workers;
RENAME TABLE workers TO employees;

-- To drop the table;
-- DROP TABLE employees;

-- To select the table;
SELECT * FROM employees;

-- To add the table column; 
ALTER TABLE employees 
ADD mobile_number VARCHAR(12);

ALTER TABLE employees
ADD email VARCHAR(50);

-- To delete the table column;
ALTER TABLE employees
DROP COLUMN email;

-- To change the column datatype;
ALTER TABLE employees
MODIFY COLUMN mobile_number INT;

-- To rename the table column;
ALTER TABLE employees
RENAME COLUMN mobile_number TO phone_number;

SELECT * FROM employees;

-- To change the position of the table column
ALTER TABLE employees 
MODIFY phone_number INT
AFTER last_name;

-- To change the position at first;
ALTER TABLE employees 
MODIFY phone_number INT 
FIRST;

SELECT * FROM employees;