CREATE DATABASE L1501
USE L1501

CREATE TABLE Person (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(20));

INSERT INTO Person  VALUES
(3, 'Jonathan', '051-1234567'),
(12, 'Elvis', '051-7654321'),
(1, 'Moncef', '212-1234567'),
(2, 'Maroua', '212-6523651'),
(7, 'Meir', '972-1234567'),
(9, 'Rachel', '972-0011100');

CREATE TABLE Country (
    name VARCHAR(50),
    country_code VARCHAR(10) PRIMARY KEY
);

INSERT INTO Country VALUES
('Peru', '051'),
('Israel', '972'),
('Morocco', '212'),
('Germany', '049'),
('Ethiopia', '251');

CREATE TABLE Calls (
    caller_id INT,
    callee_id INT,
    duration INT
);

INSERT INTO Calls VALUES
(1, 9, 33),
(2, 9, 4),
(1, 2, 59),
(3, 12, 102),
(3, 12, 330),
(12, 3, 5),
(7, 9, 13),
(7, 1, 3),
(9, 7, 1),
(1, 7, 7);

--Query for Countries You Can Safely Invest In
SELECT co.name AS country
FROM Person AS p
LEFT JOIN Calls c
ON p.id IN(c.caller_id, c.callee_id)
LEFT JOIN Country co
ON LEFT(p.phone_number, 3) = co.country_code
GROUP BY (co.name)
HAVING AVG(c.duration) > (SELECT AVG(duration) FROM Calls);