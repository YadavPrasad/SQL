CREATE DATABASE L610
USE L610

CREATE TABLE Triangle (x INT,y INT,z INT,PRIMARY KEY (x, y, z));
INSERT INTO Triangle VALUES
(13, 15, 30),
(10, 20, 15);

--Query for Triangle Judgement
SELECT x,y,z,CASE WHEN (x+y>z AND x+z>y AND z+y>x) THEN 'Yes' ELSE 'No' END AS triangle
FROM Triangle 

