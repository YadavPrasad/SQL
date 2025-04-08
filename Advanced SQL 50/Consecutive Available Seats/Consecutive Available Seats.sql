CREATE DATABASE L603
USE L603

CREATE TABLE cinema (
    seat_id INT PRIMARY KEY IDENTITY(1,1),
    free BIT
);

INSERT INTO cinema VALUES (1), (0), (1), (1), (1);

--Query for Consecutive Available Seats

SELECT T.seat_id
FROM (SELECT *, LAG(free) OVER(ORDER BY seat_id) AS prev, LEAD(free) OVER(ORDER BY seat_id) AS next  FROM cinema) AS T
WHERE (T.free = 1 AND T.prev = 1) OR (T.free = 1 AND T.next = 1)
ORDER BY T.seat_id