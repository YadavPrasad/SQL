CREATE DATABASE L1112
USE L1112

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    grade INT,
    PRIMARY KEY (student_id, course_id));

INSERT INTO Enrollments VALUES
(2, 2, 95),
(2, 3, 95),
(1, 1, 90),
(1, 2, 99),
(3, 1, 80),
(3, 2, 75),
(3, 3, 82);

--Method 1 : LEFT JOIN
SELECT e.student_id, MIN(e.course_id) AS course_id, MAX(e.grade) AS grade
FROM Enrollments e
LEFT JOIN  (SELECT student_id, MAX(grade) AS max_grade FROM Enrollments GROUP BY student_id) as T
ON t.student_id = e.student_id
WHERE grade = max_grade
GROUP BY e.student_id
ORDER BY e.student_id

--Method 2 : WINDOW FUNCTION
SELECT t.student_id, t.course_id,t.grade
FROM (SELECT *, ROW_NUMBER() OVER(PARTITION BY student_id ORDER BY grade DESC,course_id ASC) AS rnk
FROM Enrollments) AS t
WHERE t.rnk = 1;