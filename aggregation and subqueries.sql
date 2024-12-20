-- Create sales table with appropriate columns
CREATE TABLE example.sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    category_id INT,
    sales_amount DECIMAL(10, 2),
    sales_date DATE
);

-- Insert sample data into sales table
INSERT INTO sales (sale_id, product_id, category_id, sales_amount, sales_date)
VALUES 
    (1, 101, 1, 500.00, '2023-01-05'),
    (2, 102, 2, 300.00, '2023-02-10'),
    (3, 103, 1, 1500.00, '2023-03-15'),
    (4, 104, 3, 200.00, '2023-04-20'),
    (5, 105, 2, 700.00, '2023-05-25'),
    (6, 106, 1, 1200.00, '2023-06-30'),
    (7, 107, 3, 950.00, '2023-07-05'),
    (8, 108, 2, 400.00, '2023-08-15'),
    (9, 109, 1, 850.00, '2023-09-10'),
    (10, 110, 3, 1200.00, '2023-10-25');
    
-- Retrieve total sales and average sales for each product category
SELECT 
    category_id,
    COUNT(product_id) AS total_products,
    SUM(sales_amount) AS total_sales,
    AVG(sales_amount) AS average_sales
FROM 
    sales
WHERE 
    sales_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY 
    category_id
HAVING 
    SUM(sales_amount) > 100
ORDER BY 
    total_sales DESC;

