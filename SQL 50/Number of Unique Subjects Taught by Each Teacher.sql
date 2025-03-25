CREATE DATABASE L2356
USE L2356

CREATE TABLE Teacher (
    teacher_id INT,
    subject_id INT,
    dept_id INT,
    PRIMARY KEY (subject_id, dept_id)
);
INSERT INTO Teacher VALUES (1, 2, 3),(1, 2, 4),(1, 3, 3),(2, 1, 1),(2, 2, 1),(2, 3, 1),(2, 4, 1);

--Query for Number of Unique Subjects Taught by Each Teacher
SELECT teacher_id,COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;