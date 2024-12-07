CREATE DATABASE L1757
USE L1757

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    low_fats CHAR(1),
    recyclable CHAR(1)
);

INSERT INTO Products (product_id, low_fats, recyclable) VALUES
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

--Recyclable and Low Fat Products
select product_id from Products where low_fats='Y' and recyclable = 'Y'