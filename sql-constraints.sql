USE my_database;
-- Constraints

-- PRIMARY KEY's are used to unique identity and can't be NULL value 
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(5, 2)
);

INSERT INTO products 
VALUES 
(1, "ReactJS", 500.00), 
(2, "NodeJS", 400.00), 
(3, "ExpressJS", 300.00),
-- It will return a error 
(NULL, "JavaScript", 600.00);

-- Another way to add PRIMARY KEY
ALTER TABLE products
ADD CONSTRAINT PRIMARY KEY(product_id);

-- Delete a table
DROP TABLE products;

-- =====================================================================================

-- UNIQUE constraint is used to the value should be unique Prevent the duplicate values
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50) UNIQUE,
    price DECIMAL(5, 2)
);

INSERT INTO products 
VALUES 
(1, "ReactJS", 500.00), 
(2, "NodeJS", 400.00), 
-- It return duplicate entry
(3, "NodeJS", 600.00),
(4, "ExpressJS", 300.00);

-- Another way to add UNIQUE
ALTER TABLE products
ADD CONSTRAINT UNIQUE(product_name);

-- Delete a table
DROP TABLE products;

-- =====================================================================================

-- CHECK constraint it check the value we try to insert based on a condition
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50) UNIQUE,
    price DECIMAL(5, 2)
    CONSTRAINT price_check CHECK(price > 200)
);

INSERT INTO products 
VALUES 
(1, "ReactJS", 500.00), 
(2, "NodeJS", 400.00), 
-- It return error check constraint violated
(3, "ExpressJS", 100.00);

-- Another way to add check constraint
ALTER TABLE products
ADD CONSTRAINT price_chk CHECK(price > 200);

-- Delete a table
DROP TABLE products;

-- =====================================================================================

-- DEFAULT constraint insert a default value we are given
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50) UNIQUE,
    price DECIMAL(5, 2) DEFAULT 0
    -- CONSTRAINT price_check CHECK(price > 200) 
);

-- It insert the default value we given
INSERT INTO products (product_id, product_name)
VALUES (4, "JavaScript");

-- Another way to add this constraint
ALTER TABLE products
ALTER price SET DEFAULT 0;

-- Delete a table
DROP TABLE products;

-- =====================================================================================

-- NOT NULL constraint we cant insert a null values
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50) UNIQUE,
    price DECIMAL(5, 2) DEFAULT 0,
    discount INT NOT NULL
);

-- It return discount cant be null
INSERT INTO products 
VALUES (1, "JavaScript", 300, NULL);

-- Another way to add this constraint
ALTER TABLE products
MODIFY discount INT NOT NULL;

-- Delete a table
DROP TABLE products;

-- =====================================================================================

-- FOREIGN KEY is used to link the two tables

CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50) UNIQUE,
    price DECIMAL(5, 2) DEFAULT 0,
    discount INT NOT NULL,
    customer_id INT,
    CONSTRAINT fk_cust_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

-- Another way to add this constraint
ALTER TABLE products
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

-- To delete the FOREIGN KEY
ALTER TABLE products DROP FOREIGN KEY fk_customer_id;

-- Delete a table
DROP TABLE products;
DROP TABLE customers;

-- =====================================================================================

-- AUTO_INCREMENT is used to increase the PRIMARY KEY value by 1

CREATE TABLE test(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50)
);

INSERT INTO test VALUES (1, "reactjs"), (2, "javascript"), (3, "nodejs");
-- No need to insert a value to product id
INSERT INTO test (product_name) VALUES ("express");

-- We can also set the default value
ALTER TABLE test AUTO_INCREMENT = 1000; 

-- Delete a table
DROP TABLE test;

SELECT * FROM test;