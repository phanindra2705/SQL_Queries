-- Create the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Insert data into the products table
INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES 
(1, 'Laptop', 'Electronics', 1200.50, 15),
(2, 'Headphones', 'Accessories', 150.75, 50),
(3, 'Coffee Maker', 'Home Appliances', 80.99, 30),
(4, 'Desk Chair', 'Furniture', 200.00, 20),
(5, 'Smartphone', 'Electronics', 999.99, 10);

-- Retrieve all data from the products table
SELECT * FROM products;
