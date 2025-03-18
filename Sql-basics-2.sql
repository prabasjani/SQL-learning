-- To insert a single value to the table;
INSERT INTO employees VALUES (1, "Prabanjan", "Sowmi", 1500.00, "2025-03-01");

-- To insert many values to the table;
INSERT INTO employees VALUES 
(2, "Thirupathy", "Krishnan", 1700.00, "2025-03-05"),
(3, "Prasanth", "Manas", 1600.00, "2025-03-10");

-- To insert specific values only to the table;
INSERT INTO employees (emp_id, first_name, last_name) 
VALUES (4, "Raj", "Kumar");

-- To select every column in the table;
SELECT * FROM employees;

-- To select specific column in the table;
SELECT first_name, last_name FROM employees;

-- To find all data by given data
SELECT * FROM employees
WHERE first_name = "Prabanjan";

-- To find specific data by given data
SELECT first_name, salary FROM employees
WHERE first_name = "Prabanjan";

-- To find data based on condition;
SELECT * FROM employees
WHERE salary < 1700;

SELECT * FROM employees
WHERE salary >= 1600;

SELECT * FROM employees
WHERE emp_id != 3;

-- To find NULL values
SELECT * FROM employees
WHERE salary IS NULL;

-- To find NOT NULL values
SELECT * FROM employees
WHERE salary IS NOT NULL;