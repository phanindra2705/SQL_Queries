CREATE TABLE example.departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Insert sample data into the departments table
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Engineering'),
(4, 'Human Resources'),
(5, 'Finance');


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert sample data into the employees table
INSERT INTO employees (employee_id, first_name, last_name, hire_date, salary, department_id) VALUES
(1, 'Alice', 'Johnson', '2015-05-10', 75000.00, 1),
(2, 'Bob', 'Smith', '2018-08-25', 65000.00, 2),
(3, 'Charlie', 'Brown', '2020-11-30', 95000.00, 3),
(4, 'David', 'Williams', '2012-03-15', 120000.00, 3),
(5, 'Emma', 'Davis', '2017-07-22', 48000.00, 4),
(6, 'Frank', 'Miller', '2019-02-18', 55000.00, 2),
(7, 'Grace', 'Wilson', '2014-06-05', 67000.00, 1),
(8, 'Hannah', 'Moore', '2011-09-30', 90000.00, 5),
(9, 'Isaac', 'Taylor', '2016-01-12', 54000.00, 1),
(10, 'Jack', 'Anderson', '2021-04-20', 72000.00, 3);


-- Retrieve employee details along with department names and average salaries
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.hire_date,
    e.salary,
    d.department_name,
    AVG(e.salary) OVER (PARTITION BY e.department_id) AS avg_salary_in_dept,
    COUNT(e.employee_id) OVER (PARTITION BY e.department_id) AS dept_employee_count
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
WHERE 
    e.salary > 50000 -- Filter for employees earning more than 50k
    AND e.hire_date >= '2010-01-01' -- Only employees hired after 2010
    AND d.department_name IN ('Sales', 'Marketing', 'Engineering') -- Focus on specific departments
ORDER BY 
    d.department_name ASC, e.salary DESC -- Order by department and salary descending
LIMIT 50; -- Limit to 50 records
