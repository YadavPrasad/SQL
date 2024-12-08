CREATE DATABASE CC2
USE CC2

CREATE TABLE student (
    St_id INT,
    St_Name VARCHAR(100),
    Department VARCHAR(50),
    Course_id VARCHAR(10)
);

CREATE TABLE course (
    Course_id VARCHAR(10),
    Course_Name VARCHAR(100),
    Credits INT,
    Prof_id INT
);

INSERT INTO student VALUES
(1002, 'Emily Brown', 'History', 'HIS102'),
(1003, 'David Lee', 'Mathematics', 'MAT201'),
(1004, 'Sarah Johnson', 'English', 'ENG202'),
(1005, 'Michael Chen', 'Biology', 'BIO103');

INSERT INTO course (Course_id, Course_Name, Credits, Prof_id) VALUES
('HIS102', 'World History II', 3, 2004),
('MAT202', 'Linear Algebra', 2, 2002),
('ENG201', 'Advanced Writing', 4, 2003),
('BIO103', 'Principles of Biology', 4, 2005);

--Query for Inner Joins
SELECT *
FROM student s
JOIN course c
ON s.Course_id = c.Course_id;