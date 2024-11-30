CREATE DATABASE L177
USE L177
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

-- Nth Highest Salary 
CREATE FUNCTION NthSalary(@N INT) 
RETURNS INT 
AS
BEGIN
     RETURN(
	         SELECT Salary 
			 FROM(
			 SELECT DISTINCT SALARY, DENSE_RANK() OVER (ORDER BY Salary DESC) AS SALARYRANK
			      FROM EMPLOYEE) AS NTHSALARY
			WHERE SALARYRANK= @N
			)
END

SELECT dbo.NthSalary(3) as SRANK;