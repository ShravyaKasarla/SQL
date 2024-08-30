-- Create the students table

create database task;

use task;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    email VARCHAR(100),
    enrollment_date DATE
);

-- Insert 25 students' data into the students table
INSERT INTO students (student_id, first_name, last_name, age, grade, email, enrollment_date) VALUES
(1, 'John', 'Doe', 15, '10', 'john.doe@example.com', '2023-09-01'),
(2, 'Jane', 'Smith', 16, '11', null, '2022-09-01'),
(3, 'Michael', 'Johnson', 14, '9', 'michael.johnson@example.com', '2023-09-01'),
(4, 'Emily', 'Davis', 17, '12', 'emily.davis@gmail.com', '2021-09-01'),
(5, 'William', 'Brown', 15, '10', 'william.brown@example.com', '2023-09-01'),
(6, 'Jessica', 'Williams', 16, '11',null, '2022-09-01'),
(7, 'Matthew', 'Jones', 14, '9', 'matthew.jones@example.com', '2023-09-01'),
(8, 'Sarah', 'Garcia', 17, '12', 'sarah.garcia@example.com', '2021-09-01'),
(9, 'David', 'Martinez', 15, '10', null, '2023-09-01'),
(10, 'Ashley', 'Rodriguez', 16, '11', 'ashley.rodriguez@example.com', '2022-09-01'),
(11, 'Joshua', 'Lee', 14, '9', 'joshua.lee@example.com', '2023-09-01'),
(12, 'Amanda', 'Hernandez', 17, '12', null, '2021-09-01'),
(13, 'James', 'Lopez', 15, '10', null, '2023-09-01'),
(14, 'Megan', 'Gonzalez', 16, '11', 'megan.gonzalez@example.com', '2022-09-01'),
(15, 'Andrew', 'Wilson', 14, '9', 'andrew.wilson@gmail.com', '2023-09-01'),
(16, 'Samantha', 'Anderson', 17, '12', 'samantha.anderson@gmail.com', '2021-09-01'),
(17, 'Ryan', 'Thomas', 15, '10', 'ryan.thomas@example.com', '2023-09-01'),
(18, 'Brittany', 'Taylor', 16, '11', 'brittany.taylor@example.com', '2022-09-01'),
(19, 'Daniel', 'Moore', 14, '9', null, '2023-09-01'),
(20, 'Laura', 'Jackson', 17, '12', 'laura.jackson@gmail.com', '2021-09-01'),
(21, 'Nicholas', 'Martin', 15, '10', 'nicholas.martin@example.com', '2023-09-01'),
(22, 'Elizabeth', 'Lee', 16, '11', 'elizabeth.lee@example.com', '2022-09-01'),
(23, 'Tyler', 'Perez', 14, '9', 'tyler.perez@yahoo.com', '2023-09-01'),
(24, 'Hannah', 'Thompson', 17, '12', 'hannah.thompson@example.com', '2021-09-01'),
(25, 'Jonathan', 'White', 15, '10', 'jonathan.white@gmail.com', '2023-09-01');


select * from students;

# operators:

#1.  Write a query to find students in grades 9, 10, and 11.
SELECT *
FROM students
WHERE grade IN (9, 10, 11);


#2. Find Students Not in 9th Grade and Older Than 15
SELECT *
FROM students
WHERE grade <> 9 AND age > 15;

SELECT *
FROM students
WHERE grade not in (9) AND age > 15;


# 3. Find Students Aged 15 or in 11th Grade
SELECT *
FROM students
WHERE age = 15 OR grade = 11;


# 4. Find Students with Age Between 14 and 16
SELECT *
FROM students
WHERE age BETWEEN 14 AND 16;


# 5. Write a query to find students who have not provided an email address.
SELECT * 
FROM students
WHERE email IS NULL;


# 6. Write a query to calculate the year of birth for each student (assuming the current year is 2024).
SELECT * , 
	(2024 - age) AS 'yearOfBirth'
FROM students;



