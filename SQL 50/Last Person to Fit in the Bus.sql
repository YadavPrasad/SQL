CREATE DATABASE L1204
USE L1204

CREATE TABLE Queue (
		person_id INT PRIMARY KEY,person_name VARCHAR(100),weight INT,turn INT
		);

INSERT INTO Queue VALUES
(5, 'Alice', 250, 1),
(4, 'Bob', 175, 5),
(3, 'Alex', 350, 2),
(6, 'John Cena', 400, 3),
(1, 'Winston', 500, 6),
(2, 'Marie', 200, 4);

--Query for Last Person to Fit in the Bus
WITH CTE as (SELECT * , SUM(weight) OVER(ORDER BY turn ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total
FROM queue)
SELECT TOP 1 person_name FROM CTE WHERE total<=1000 ORDER BY turn DESC
