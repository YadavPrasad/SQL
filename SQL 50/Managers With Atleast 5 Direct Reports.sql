CREATE DATABASE L570
USE L570

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    managerId INT
);

INSERT INTO Employee VALUES (101,'John','A',NULL),(102,'Dan','A',101),
                            (103,'James','A',101),(104,'Amy','A',101), 
			                (105,'Anne','A',101),(106,'Ron','B',101);

--Query for Managers With Atleast 5 Direct Reports
SELECT e1.name
FROM employee e1 
LEFT JOIN employee e2 
ON e1.id=e2.managerId
GROUP BY e1.id,e1.name 
HAVING count(*)>=5