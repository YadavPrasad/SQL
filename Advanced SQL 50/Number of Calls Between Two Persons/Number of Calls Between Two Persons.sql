CREATE DATABASE L1699
USE L1699

CREATE TABLE Calls (
    from_id INT,
    to_id INT,
    duration INT);

INSERT INTO Calls VALUES
    (1, 2, 59),
    (2, 1, 11),
    (1, 3, 20),
    (3, 4, 100),
    (3, 4, 200),
    (3, 4, 200),
    (4, 3, 499);

--Query for Number of Calls Between Two Persons
SELECT LEAST(from_id, to_id) AS person1, GREATEST(from_id, to_id) AS person2, SUM(duration) AS total_duration, COUNT(*) AS call_count
FROM Calls
GROUP BY LEAST(from_id, to_id), GREATEST(from_id, to_id)