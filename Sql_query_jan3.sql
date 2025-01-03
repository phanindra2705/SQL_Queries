CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Departments (department_id, department_name, location)
VALUES 
    (1, 'Engineering', 'New York'),
    (2, 'Marketing', 'San Francisco'),
    (3, 'HR', 'Chicago'),
    (4, 'Finance', 'Los Angeles');

INSERT INTO Employees (employee_id, first_name, last_name, department_id, salary, hire_date)
VALUES 
    (1, 'John', 'Doe', 1, 75000.00, '2010-06-01'),
    (2, 'Jane', 'Smith', 2, 65000.00, '2015-03-22'),
    (3, 'Alice', 'Johnson', 3, 70000.00, '2017-08-30'),
    (4, 'Bob', 'Brown', 4, 85000.00, '2005-12-12'),
    (5, 'Emily', 'Davis', 1, 48000.00, '2020-07-15');


SELECT 
    D.department_name,
    D.location,
    E.first_name,
    E.last_name,
    E.salary,
    AVG(E.salary) OVER (PARTITION BY E.department_id) AS avg_department_salary
FROM 
    Employees E
JOIN 
    Departments D ON E.department_id = D.department_id
WHERE 
    E.salary > 50000
ORDER BY 
    avg_department_salary DESC, E.salary DESC
LIMIT 3;
