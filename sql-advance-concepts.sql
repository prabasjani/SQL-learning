SELECT * FROM employees;

-- Basic Functions in SQL
SELECT COUNT(salary) AS count FROM employees;

SELECT AVG(salary) AS avg_salary FROM employees;

SELECT MAX(salary) AS max_salary FROM employees;

SELECT MIN(salary) AS min_salary FROM employees;

SELECT CONCAT(first_name, " ", last_name) AS full_name FROM employees;

-- Logical Operators
SELECT * FROM employees
WHERE first_name = "Prabanjan" AND last_name = "Sowmi";

SELECT * FROM employees
WHERE first_name = "Prabanjan" OR last_name = "Annamalai";

SELECT * FROM employees
WHERE NOT first_name = "Prabanjan";

SELECT * FROM employees
WHERE joining_date BETWEEN "2025-03-03" AND "2025-03-07"; 

SELECT * FROM employees
WHERE last_name IN ("Sowmi");

-- LIMIT
SELECT * FROM customers LIMIT 3;
-- first provide Offset value it return the next row you given then the limit value
SELECT * FROM customers LIMIT 2, 2;

-- ORDER BY
SELECT * FROM customers ORDER BY full_name;
SELECT * FROM customers ORDER BY full_name DESC;

-- WILD CARDS % _
SELECT * FROM customers 
WHERE full_name LIKE "prab%";

SELECT * FROM customers 
WHERE full_name LIKE "th___";

SELECT * FROM customers 
WHERE full_name LIKE "_r%";

-- VIEWS
-- It creates virtual table and its updates in real time
CREATE VIEW employees_view AS
SELECT first_name, last_name FROM employees;

SELECT * FROM employees_view;

-- To delete the view table
DROP VIEW employees_view;

-- UNIONS
-- Two table data in a single column and it eliminates duplicates
SELECT first_name FROM employees
UNION
SELECT full_name FROM customers;

-- It return duplicates
SELECT first_name FROM employees
UNION ALL
SELECT full_name FROM customers;

-- INDEX
-- To show all the indexes
SHOW INDEXES FROM customers;

-- To create an Index to any column we want
CREATE INDEX full_name_idx
ON customers(full_name);

-- To delete the index
ALTER TABLE customers
DROP INDEX full_name_idx;