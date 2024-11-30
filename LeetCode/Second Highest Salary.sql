Create database L176;
use L176;
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Salary INT
);

INSERT INTO Employee (Employee_ID, Employee_Name, Salary)
VALUES
(1, 'John', 5000),
(2, 'Jane', 7000),
(3, 'Alice', 6000),
(4, 'Bob', 9000),
(5, 'Charlie', 6000),
(6, 'David', 8000),
(7, 'Eva', 9000);

/*Second Highest Salary*/

SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employee)