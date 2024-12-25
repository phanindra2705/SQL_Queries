-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50)
);

-- Create the projects table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert data into employees table
INSERT INTO employees (employee_id, employee_name, department)
VALUES 
(1, 'Alice', 'IT'),
(2, 'Bob', 'Marketing'),
(3, 'Charlie', 'Finance');

-- Insert data into projects table
INSERT INTO projects (project_id, project_name, employee_id)
VALUES 
(101, 'Website Redesign', 1),
(102, 'Ad Campaign', 2),
(103, 'Budget Analysis', 3);

-- Retrieve employees working on projects in the IT department
SELECT 
    employees.employee_name, 
    projects.project_name
FROM 
    employees
JOIN 
    projects
ON 
    employees.employee_id = projects.employee_id
WHERE 
    employees.department = 'IT';
