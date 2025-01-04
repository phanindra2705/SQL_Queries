-- Create the students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    grade INT,
    date_of_birth DATE
);

-- Insert data into the students table
INSERT INTO students (student_id, student_name, grade, date_of_birth)
VALUES 
(1, 'Alice Johnson', 10, '2008-05-15'),
(2, 'Bob Smith', 11, '2007-03-22'),
(3, 'Charlie Brown', 12, '2006-08-10');

-- Retrieve all data from the students table
SELECT * FROM students;
