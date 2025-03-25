CREATE DATABASE L196
USE L196

CREATE TABLE Person (id INT PRIMARY KEY,email VARCHAR(255));

INSERT INTO Person VALUES (1,'john@example.com'),(2,'bob@example.com'),(3,'john@example.com');

--Query for Delete Duplicate Emails
DELETE p1 
FROM Person p1,Person p2
WHERE p1.Email = p2.Email AND p1.Id > p2.Id