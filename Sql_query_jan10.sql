-- Create the courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_name VARCHAR(50),
    credits INT,
    semester VARCHAR(20)
);

-- Insert data into the courses table
INSERT INTO courses (course_id, course_name, instructor_name, credits, semester)
VALUES 
(1, 'Database Systems', 'Dr. Smith', 3, 'Fall 2024'),
(2, 'Machine Learning', 'Dr. Johnson', 4, 'Spring 2024'),
(3, 'Data Structures', 'Dr. Brown', 3, 'Fall 2023'),
(4, 'Computer Networks', 'Dr. Taylor', 3, 'Spring 2023');

-- Retrieve specific courses with 4 credits
SELECT 
    course_name, 
    instructor_name, 
    credits
FROM 
    courses
WHERE 
    credits = 4;
