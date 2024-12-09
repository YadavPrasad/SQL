CREATE DATABASE CC3
USE CC3

CREATE TABLE Students (
    St_id INT PRIMARY KEY,
    St_Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Course_id VARCHAR(10) NOT NULL
);

CREATE TABLE Courses (
    Course_id VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    Prof_id INT NOT NULL
);

INSERT INTO Students VALUES
(1001, 'John Smith', 'Computer Science', 'CS101'),
(1002, 'Emily Brown', 'History', 'HIS102'),
(1003, 'David Lee', 'Mathematics', 'MAT202'),
(1004, 'Sarah Johnson', 'English', 'ENG201'),
(1005, 'Michael Chen', 'Biology', 'BIO103');


INSERT INTO Courses VALUES
('CS101', 'Introduction to Computer Science', 3, 2001),
('HIS102', 'World History II', 3, 2004),
('MAT202', 'Linear Algebra', 2, 2002),
('ENG201', 'Advanced Writing', 4, 2003),
('BIO104', 'Principles of Bio-technology', 4, 2006);

--Query for Left Joins
SELECT *
FROM students s
LEFT JOIN courses c
ON s.Course_id = c.Course_id;