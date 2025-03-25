CREATE DATABASE L1607
USE L1607

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name NVARCHAR(50) 
);

INSERT INTO Customer VALUES
(101, 'Alice'),
(102, 'Bob'),
(103, 'Charlie');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    sale_date DATE ,
    order_cost DECIMAL(10, 2) ,
    customer_id INT ,
    seller_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Orders  VALUES
(1, '2020-03-01', 1500, 101, 1),
(2, '2020-05-25', 2400, 102, 2),
(3, '2019-05-25', 800, 101, 3),
(4, '2020-09-13', 1000, 103, 2),
(5, '2019-02-11', 700, 101, 2);

CREATE TABLE Seller (
    seller_id INT PRIMARY KEY,
    seller_name NVARCHAR(50) 
);

INSERT INTO Seller VALUES
(1, 'Daniel'),
(2, 'Elizabeth'),
(3, 'Frank');


--TRUTH table - > orders table 
--DIMENSION table - > customers, sellers table

--Query to find Sellers With No Sales
SELECT s.seller_name
FROM seller s 
LEFT JOIN (SELECT * FROM Orders WHERE YEAR(sale_date) = 2020) AS o
ON s.seller_id = o.seller_id
WHERE o.order_id IS NULL
ORDER BY seller_name 