CREATE DATABASE L183
USE L183

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);

INSERT INTO Customers VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Orders VALUES
(1, 1),  
(2, 2),  
(3, 1);  

--Query for Customers Who Never Order
SELECT c.name
FROM Customers c 
LEFT JOIN Orders o 
ON c.id = o.customerId
WHERE o.Id IS NULL;