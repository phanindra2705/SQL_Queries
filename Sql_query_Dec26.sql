CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES (1, 'Laptop', 'Electronics', 999.99, 50),
       (2, 'Smartphone', 'Electronics', 699.99, 100),
       (3, 'Desk Chair', 'Furniture', 199.99, 30);

SELECT ProductName, Price
FROM Products
WHERE Category = 'Electronics' AND StockQuantity > 0;

UPDATE Products SET Price = Price * 0.9 WHERE Category = 'Furniture';

SELECT Category, AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 500;
