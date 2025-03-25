CREATE DATABASE L619
USE L619

CREATE TABLE MyNumbers (num INT);
INSERT INTO MyNumbers  VALUES (8),(8),(3),(3),(1),(4),(5),(6);

--Query for Single number
SELECT max(num) AS num 
FROM (SELECT * FROM mynumbers GROUP BY num HAVING count(*)=1) AS singleno;
