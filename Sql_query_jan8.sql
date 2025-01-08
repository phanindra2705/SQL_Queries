-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50)
);

-- Insert data into the customers table
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, city)
VALUES 
(1, 'Alice', 'Johnson', 'alice.johnson@gmail.com', '123-456-7890', 'New York'),
(2, 'Bob', 'Smith', 'bob.smith@yahoo.com', '987-654-3210', 'Los Angeles'),
(3, 'Charlie', 'Brown', 'charlie.brown@outlook.com', '456-789-1234', 'Chicago'),
(4, 'Diana', 'Prince', 'diana.prince@gmail.com', '789-123-4567', 'San Francisco');

-- Retrieve all data from the customers table
SELECT * FROM customers;

-- Select specific columns from the customers table
SELECT 
    first_name, 
    last_name, 
    email, 
    city
FROM 
    customers
WHERE 
    city = 'New York' OR city = 'Los Angeles' -- Filter customers by city
ORDER BY 
    last_name ASC; -- Sort results alphabetically by last name