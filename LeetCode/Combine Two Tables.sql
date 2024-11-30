CREATE DATABASE L175
USE L175

-- Create Person table
CREATE TABLE Person (
    personId INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50)
);

-- Insert data into Person table
INSERT INTO Person (personId, lastName, firstName) VALUES
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob'),
(3, 'Smith', 'Charlie'),
(4, 'Brown', 'David'),
(5, 'Johnson', 'Emily');

-- Create Address table
CREATE TABLE Address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(100),
    state VARCHAR(100),
    FOREIGN KEY (personId) REFERENCES Person(personId)
);

-- Insert data into Address table
INSERT INTO Address (addressId, personId, city, state) VALUES
(1, 2, 'New York City', 'New York'),
(2, 3, 'Los Angeles', 'California'),
(3, 5, 'Chicago', 'Illinois');

--Combine Two Tables
SELECT CONCAT(p.firstName,' ',p.lastName) AS names,a.city
FROM person p 
INNER JOIN Address a 
ON p.personId = a.personId