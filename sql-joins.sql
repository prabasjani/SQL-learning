-- JOINS

-- To create a table with foreign key
CREATE TABLE students(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    student_email VARCHAR(50),
    student_gpa DECIMAL(2, 1),
    staff_id INT
    -- CONSTRAINT staff_id_fk FOREIGN KEY(staff_id) REFERENCES staffs(staff_id)
);

-- To create a table for reference table
CREATE TABLE staffs(
	staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50)
);

-- Another way to add foreign key constraint
ALTER TABLE students
ADD  CONSTRAINT staff_id_fk FOREIGN KEY(staff_id) REFERENCES staffs(staff_id);

-- Insert values
INSERT INTO staffs VALUES (1, "udha"), (2, "arokia"), (3, "jeraline"), (4, NULL);

INSERT INTO students(student_name, student_email, student_gpa, staff_id) VALUES
("Hari", "hari@mail.com", 9.2, 1),
("Mohan", "mohan@mail.com", 8.5, 1),
("Siva", "siva@mail.com", 8.1, 2),
("Praba", "praba@mail.com", 7.2, 3), 
("Thiru", "thiru@mail.com", NULL, NULL);

-- Inner Join, Joined by common id
SELECT student_name, student_gpa, staff_name FROM students INNER JOIN staffs
ON students.staff_id = staffs.staff_id;

-- Left Join, Show all the rows in left table
SELECT student_name, student_gpa, staff_name FROM students LEFT JOIN staffs
ON students.staff_id = staffs.staff_id;

-- Right Join, Show all the rows in right table
SELECT student_name, student_gpa, staff_name FROM students RIGHT JOIN staffs
ON students.staff_id = staffs.staff_id;

-- Self Join

-- To create a table for self joining
CREATE TABLE workers(
	emp_id INT,
    full_name VARCHAR(50),
    designation VARCHAR(50),
    supervisor_id INT
);

-- Insert values to the table
INSERT INTO workers VALUES
(1, "praba", "manager", NULL),
(2, "thiru", "tech", 1),
(3, "prasanth", "civil", 2),
(4, "raj", "finance", 2);

-- Self Joining one table using alias to consider as another table to join itself 
SELECT a.full_name, a.designation, b.full_name AS "Reports to" FROM workers AS a INNER JOIN workers AS b
ON a.supervisor_id = b.emp_id;

SELECT a.full_name, a.designation, b.full_name AS "Reports to" FROM workers AS a LEFT JOIN workers AS b
ON a.supervisor_id = b.emp_id;
