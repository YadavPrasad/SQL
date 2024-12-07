CREATE DATABASE CC1
USE CC1

CREATE TABLE student (
    St_id INT IDENTITY(1001,1),
    St_Name VARCHAR(50),
    Department VARCHAR(50),
    Course_id VARCHAR(10)
);

INSERT INTO student 
VALUES
('John Smith', 'Computer Science', 'CS101'),
('Emily Brown', 'History', 'HIS102'),
('David Lee', 'Mathematics', 'MAT202'),
('Sarah Johnson', 'English', 'ENG201'),
('Michael Chen', 'Biology', 'BIO103');

SELECT * FROM student

CREATE TABLE course (
    Course_id VARCHAR(10),
    Course_Name VARCHAR(100),
    Credits INT,
    Prof_id INT
);

INSERT INTO course VALUES
('CS101', 'Introduction to Computer Science', 3, 2001),
('HIS102', 'World History II', 3, 2004),
('MAT202', 'Linear Algebra', 2, 2002),
('ENG201', 'Advanced Writing', 4, 2003),
('BIO103', 'Principles of Biology', 4, 2005);

SELECT * FROM course

--Query for Combining tables with SQL
SELECT *
FROM student
JOIN course
ON student.course_id = course.course_id;
