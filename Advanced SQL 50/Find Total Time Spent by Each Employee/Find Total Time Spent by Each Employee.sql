CREATE DATABASE L1741
USE L1741

CREATE TABLE Employees(emp_id int, event_day date, in_time int, out_time int)

INSERT INTO Employees VALUES ('1', '2020-11-28', '4', '32')
INSERT INTO Employees VALUES ('1', '2020-11-28', '55', '200')
INSERT INTO Employees VALUES ('1', '2020-12-3', '1', '42')
INSERT INTO Employees VALUES ('2', '2020-11-28', '3', '33')
INSERT INTO Employees VALUES ('2', '2020-12-9', '47', '74')

--Query to Find Total Time Spent by Each Employee
SELECT event_day AS day, emp_id , SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY emp_id, event_day