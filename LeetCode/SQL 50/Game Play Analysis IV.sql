CREATE DATABASE L550
USE L550

CREATE TABLE Activity (
    player_id INT NOT NULL,
    device_id INT NOT NULL,
    event_date DATE NOT NULL,
    games_played INT NOT NULL,
    PRIMARY KEY (player_id, event_date)
);

INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES
(1, 2, '2016-03-01', 5),
(1, 2, '2016-03-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);

--Query for Game Play Analysis IV

WITH a1 AS (SELECT player_id, MIN(event_date) as event_date
      FROM Activity
      GROUP BY player_id) 

SELECT ROUND((COUNT(DISTINCT a1.player_id)*1.0) / (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM a1
INNER JOIN Activity a2 
ON a1.player_id = a2.player_id
WHERE DATEDIFF(DAY,a1.event_date,a2.event_date) =1 

