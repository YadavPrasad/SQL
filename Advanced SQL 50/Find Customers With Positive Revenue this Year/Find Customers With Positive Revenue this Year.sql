CREATE DATABASE L1821
USE L1821

CREATE TABLE Customers (
    customer_id INT,
    year INT ,
    revenue INT,
);

INSERT INTO Customers VALUES
	(1, 2018, 50), 
	(1, 2021, 30),
    (1, 2020, 70),
    (2, 2021, -50),
    (3, 2018, 10),
    (3, 2016, 50),
    (4, 2021, 20);

SELECT * FROM Customers

--Query for Find Customers With Positive Revenue this Year
SELECT customer_id
FROM Customers
WHERE year = 2021
AND revenue > 0;