-- Create a table called "products" to store product information
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-incrementing unique product ID
    product_name VARCHAR(100) NOT NULL,         -- Name of the product (cannot be NULL)
    category VARCHAR(50),                       -- Category of the product (optional)
    price DECIMAL(10, 2) NOT NULL,              -- Price of the product (2 decimal places)
    stock_quantity INT DEFAULT 0,               -- Quantity in stock (default 0)
    added_date DATE DEFAULT CURDATE()           -- Date the product was added (default to today's date)
);

-- Insert sample products into the "products" table
INSERT INTO products (product_name, category, price, stock_quantity)
VALUES
('Laptop', 'Electronics', 1200.00, 50),
('Smartphone', 'Electronics', 800.00, 150),
('Office Chair', 'Furniture', 250.00, 30),
('LED Monitor', 'Electronics', 300.00, 75),
('Desk Lamp', 'Furniture', 45.00, 200);


-- Retrieve the total sales per product, filtering products with total sales greater than 5000
SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity * oi.price) AS total_sales
FROM 
    products p
JOIN 
    order_items oi ON p.product_id = oi.product_id
JOIN 
    orders o ON oi.order_id = o.order_id
WHERE 
    o.order_date BETWEEN '2023-01-01' AND '2023-12-31'  -- Orders from 2023
GROUP BY 
    p.product_id, p.product_name
HAVING 
    SUM(oi.quantity * oi.price) > 5000  -- Only products with total sales > 5000
ORDER BY 
    total_sales DESC;
