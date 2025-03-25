CREATE DATABASE L181
USE L181

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    managerId INT
);

INSERT INTO Employee (id, name, salary, managerId) VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

--Employees Earning More Than Their Managers

select e1.name as Employee 
from Employee e1 left join Employee e2 on e1.managerid  = e2.id
where e1.salary > e2.salary;