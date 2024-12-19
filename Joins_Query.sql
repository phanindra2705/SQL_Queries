CREATE TABLE example.employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    department_id INT
);

CREATE TABLE example.departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

select * from employees;

select * from departments;

INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, department_id)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2021-03-15', 101),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '2022-07-21', 102),
(3, 'Alice', 'Johnson', 'alice.johnson@email.com', '2020-11-10', 101),
(4, 'Bob', 'Brown', 'bob.brown@email.com', '2023-05-01', 103),
(5, 'Charlie', 'White', 'charlie.white@email.com', '2021-01-05', 102),
(6, 'David', 'Williams', 'david.williams@email.com', '2019-08-15', 104),
(7, 'Emily', 'Davis', 'emily.davis@email.com', '2023-02-20', 101),
(8, 'Frank', 'Wilson', 'frank.wilson@email.com', '2022-04-10', 103),
(9, 'Grace', 'Lee', 'grace.lee@email.com', '2022-09-30', 102),
(10, 'Henry', 'Miller', 'henry.miller@email.com', '2023-06-25', 104);

INSERT INTO departments (department_id, department_name, location)
VALUES
(101, 'Sales', 'New York'),
(102, 'Marketing', 'New York'),
(103, 'IT', 'San Francisco'),
(104, 'HR', 'Chicago');

SELECT e.employee_id, e.first_name, e.last_name, e.email, e.hire_date,
       d.department_name, d.location
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.hire_date > '2020-01-01'
AND d.location = 'New York'
ORDER BY e.hire_date DESC
LIMIT 10;
