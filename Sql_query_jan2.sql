-- Create a table called "sales" to store sales transactions
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,     -- Auto-incrementing unique sale ID
    product_name VARCHAR(100) NOT NULL,          -- Product name
    quantity INT NOT NULL,                       -- Quantity sold
    sale_price DECIMAL(10, 2) NOT NULL,          -- Sale price per unit
    total_amount DECIMAL(10, 2) NOT NULL,        -- Total amount for the sale (calculated)
    sale_date DATE DEFAULT CURDATE(),            -- Date of sale (defaults to today's date)
    customer_id INT,                             -- Customer ID (optional, can be NULL)
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  -- Assuming a "customers" table exists
);


-- Insert sample sales data into the "sales" table
INSERT INTO sales (product_name, quantity, sale_price, total_amount, customer_id)
VALUES
('Laptop', 2, 1000.00, 2000.00, 101),
('Smartphone', 5, 500.00, 2500.00, 102),
('Office Chair', 3, 150.00, 450.00, 103),
('Desk Lamp', 10, 30.00, 300.00, 104),
('LED Monitor', 4, 300.00, 1200.00, 101);


-- Retrieve the total sales per product and customer
SELECT 
    s.product_name, 
    s.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(s.total_amount) AS total_sales
FROM 
    sales s
JOIN 
    customers c ON s.customer_id = c.customer_id
GROUP BY 
    s.product_name, s.customer_id, c.first_name, c.last_name
ORDER BY 
    total_sales DESC;
