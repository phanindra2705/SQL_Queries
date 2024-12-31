-- Create a table to store employee information
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    email VARCHAR(100), 
    hire_date DATE, 
    salary DECIMAL(10, 2), 
    department VARCHAR(50)
);


-- Insert sample data into the employees table
INSERT INTO employees (first_name, last_name, email, hire_date, salary, department) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '2020-05-15', 55000.00, 'Marketing'),
('Jane', 'Smith', 'jane.smith@example.com', '2019-03-22', 65000.00, 'Engineering'),
('Alice', 'Johnson', 'alice.johnson@example.com', '2021-07-10', 60000.00, 'HR'),
('Bob', 'Williams', 'bob.williams@example.com', '2022-01-30', 48000.00, 'Sales'),
('Charlie', 'Brown', 'charlie.brown@example.com', '2018-08-19', 72000.00, 'Finance');


-- Retrieve all orders placed in the last 30 days along with customer details
SELECT 
    o.order_id, 
    o.order_date, 
    o.total_amount, 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    c.email, 
    a.street_address, 
    a.city, 
    a.state, 
    a.zip_code
FROM 
    orders o
JOIN 
    customers c ON o.customer_id = c.customer_id
JOIN 
    addresses a ON c.customer_id = a.customer_id
WHERE 
    o.order_date >= CURDATE() - INTERVAL 30 DAY
    AND o.status = 'Completed'
ORDER BY 
    o.order_date DESC
LIMIT 50;
