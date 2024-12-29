-- Create 'departments' table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


-- Insert data into 'departments' table
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Sales');

-- Insert data into 'employees' table
INSERT INTO employees (employee_id, first_name, last_name, email, department_id, salary, hire_date) VALUES
(101, 'Alice', 'Johnson', 'alice.johnson@example.com', 1, 60000.00, '2020-05-15'),
(102, 'Bob', 'Smith', 'bob.smith@example.com', 2, 90000.00, '2018-03-22'),
(103, 'Charlie', 'Davis', 'charlie.davis@example.com', 3, 50000.00, '2022-08-10');


-- Select employees with their department names and salary details
SELECT e.employee_id, e.first_name, e.last_name, e.email, d.department_name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
ORDER BY e.salary DESC;
