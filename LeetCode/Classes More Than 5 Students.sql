CREATE DATABASE L596
USE L596

CREATE TABLE Courses (
    student VARCHAR(50),
    class VARCHAR(50),
    PRIMARY KEY (student, class)
);

INSERT INTO Courses VALUES ('A','Math'),('B','English'),('C','Math'),('D','Biology'),('E','Math'),('F','Computer'),('G','Math'),('H','Math'),('I','Math');

--Query for Classes More Than 5 Students
SELECT class 
FROM Courses
GROUP BY class
HAVING COUNT(1)>4