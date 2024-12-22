-- Create the first table
CREATE TABLE example.students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Create the second table
CREATE TABLE example.enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert data into students table
INSERT INTO students (student_id, first_name, last_name)
VALUES (1, 'Alice', 'Johnson'), 
       (2, 'Bob', 'Smith');

-- Insert data into enrollments table
INSERT INTO enrollments (enrollment_id, student_id, course_name)
VALUES (1, 1, 'Mathematics'), 
       (2, 2, 'Science');

-- Join the tables to get student details and course names
SELECT 
    students.student_id, 
    students.first_name, 
    students.last_name, 
    enrollments.course_name
FROM 
    students
JOIN 
    enrollments
ON 
    students.student_id = enrollments.student_id;
