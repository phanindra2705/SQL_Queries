-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- Insert data into the employees table
INSERT INTO employees (employee_id, first_name, last_name, position, hire_date, salary)
VALUES 
(1, 'John', 'Doe', 'Software Engineer', '2020-05-15', 85000.00),
(2, 'Jane', 'Smith', 'Data Analyst', '2018-11-22', 70000.00),
(3, 'Emily', 'Brown', 'Product Manager', '2019-07-10', 95000.00),
(4, 'Michael', 'Johnson', 'UX Designer', '2021-01-05', 65000.00);

-- Retrieve all data from the employees table
SELECT * FROM employees;


-- Select specific columns from the employees table
SELECT 
    first_name, 
    last_name, 
    position, 
    salary
FROM 
    employees
WHERE 
    salary > 70000 -- Filter employees with salary greater than 70,000
ORDER BY 
    salary DESC; -- Sort results by salary in descending order

-- Additional filter for recent hires
SELECT 
    first_name, 
    hire_date
FROM 
    employees
WHERE 
    hire_date > '2020-01-01'; -- Filter employees hired after January 1, 2020
