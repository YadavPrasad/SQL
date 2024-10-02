CREATE DATABASE L584
USE L584

CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    referee_id INT
);

INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

--Find Customer Refree
SELECT name
FROM Customer
WHERE referee_id!=2 or referee_id IS NULL