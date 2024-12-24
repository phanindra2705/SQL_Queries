-- Create the customers table
CREATE TABLE example.customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- Create the products table
CREATE TABLE example.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert data into customers table
INSERT INTO customers (customer_id, customer_name, city)
VALUES 
(1, 'Alice', 'New York'),
(2, 'Bob', 'San Francisco'),
(3, 'Charlie', 'Chicago');

-- Insert data into products table
INSERT INTO products (product_id, product_name, price, customer_id)
VALUES 
(101, 'Laptop', 1200.00, 1),
(102, 'Tablet', 600.00, 2),
(103, 'Phone', 800.00, 1);

-- Retrieve customers who purchased products over $700
SELECT 
    customers.customer_name, 
    products.product_name, 
    products.price
FROM 
    customers
JOIN 
    products
ON 
    customers.customer_id = products.customer_id
WHERE 
    products.price > 700;
