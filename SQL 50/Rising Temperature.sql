CREATE DATABASE L197
USE 197

CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

SELECT w1.id
FROM Weather w1,Weather w2
WHERE DATEDIFF(day,w1.recordDate,w2.recordDate)=1
AND w1.temperature > w2.temperature;
