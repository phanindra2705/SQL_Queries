-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Create the departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Insert data into employees table
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES 
(1, 'Alice', 'Johnson', 101),
(2, 'Bob', 'Smith', 102),
(3, 'Charlie', 'Brown', 101);

-- Insert data into departments table
INSERT INTO departments (department_id, department_name)
VALUES 
(101, 'Human Resources'),
(102, 'Engineering');

-- Perform an INNER JOIN and filter the results
SELECT 
    employees.employee_id, 
    employees.first_name, 
    employees.last_name, 
    departments.department_name
FROM 
    employees
JOIN 
    departments
ON 
    employees.department_id = departments.department_id
WHERE 
    departments.department_name = 'Human Resources';
