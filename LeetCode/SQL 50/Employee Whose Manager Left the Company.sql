CREATE DATABASE L1978
USE L1978

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT,
    salary INT);

INSERT INTO Employees VALUES
(3, 'Mila', 9, 60301),
(12, 'Antonella', NULL, 31000),
(13, 'Emery', NULL, 67084),
(1, 'Kalel', 11, 21241),
(9, 'Mikaela', NULL, 50937),
(11, 'Joziah', 6, 28485);

--Query for Employee whose manager left the company
SELECT employee_id
FROM Employees e
WHERE e.salary<30000 
AND e.Manager_id NOT IN (SELECT employee_id FROM Employees e1) 
ORDER BY employee_id