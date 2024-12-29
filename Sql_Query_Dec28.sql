-- Create 'customers' table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Create 'orders' table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create 'products' table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Insert data into 'customers' table
INSERT INTO customers (customer_id, first_name, last_name, email, phone) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901'),
(3, 'Sam', 'Wilson', 'sam.wilson@example.com', '345-678-9012');

-- Insert data into 'orders' table
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-01-15', 250.75),
(2, 2, '2024-01-16', 450.50),
(3, 3, '2024-01-17', 300.00);

-- Insert data into 'products' table
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 1200.50),
(2, 'Smartphone', 800.25),
(3, 'Tablet', 400.75);


-- Select all orders along with customer details
SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
