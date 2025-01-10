-- Create the students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    major VARCHAR(50),
    enrollment_year INT,
    gpa DECIMAL(3, 2)
);

-- Insert data into the students table
INSERT INTO students (student_id, first_name, last_name, major, enrollment_year, gpa)
VALUES 
(1, 'Emily', 'Clark', 'Computer Science', 2021, 3.8),
(2, 'James', 'Miller', 'Mechanical Engineering', 2020, 3.5),
(3, 'Sophia', 'Davis', 'Biology', 2022, 3.9),
(4, 'Liam', 'Wilson', 'Mathematics', 2019, 3.2);

-- Retrieve all data from the students table
SELECT * FROM students;


-- Select specific columns from the students table
SELECT 
    first_name, 
    last_name, 
    major, 
    gpa
FROM 
    students
WHERE 
    gpa > 3.5 -- Filter students with a GPA greater than 3.5
ORDER BY 
    gpa DESC; -- Sort results by GPA in descending order