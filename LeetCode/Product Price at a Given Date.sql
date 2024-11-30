CREATE DATABASE L1164
USE L1164

CREATE TABLE Products (
    product_id INT,
    new_price INT,
    change_date DATE,
    PRIMARY KEY (product_id, change_date)
);

INSERT INTO Products VALUES 
(1, 20, '2019-08-14'),
(2, 50, '2019-08-14'),
(1, 30, '2019-08-15'),
(1, 35, '2019-08-16'),
(2, 65, '2019-08-17'),
(3, 20, '2019-08-18');

--Query for Product Price at a Given Date
WITH CTE AS (
    SELECT *, 
           RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) AS R
    FROM Products
    WHERE change_date <= '2019-08-16'
)
SELECT product_id, new_price AS price
FROM CTE
WHERE R = 1

UNION

SELECT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (SELECT product_id FROM CTE);
