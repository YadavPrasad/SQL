CREATE DATABASE L1890
USE L1890

CREATE TABLE Logins (user_id INT, time_stamp DATETIME);

INSERT INTO Logins (user_id, time_stamp) VALUES ('6', '2020-06-30 15:06:07');
INSERT INTO Logins (user_id, time_stamp) VALUES ('6', '2021-04-21 14:06:06');
INSERT INTO Logins (user_id, time_stamp) VALUES ('6', '2019-03-07 00:18:15');
INSERT INTO Logins (user_id, time_stamp) VALUES ('8', '2020-02-01 05:10:53');
INSERT INTO Logins (user_id, time_stamp) VALUES ('8', '2020-12-30 00:46:50');
INSERT INTO Logins (user_id, time_stamp) VALUES ('2', '2020-01-16 02:49:50');
INSERT INTO Logins (user_id, time_stamp) VALUES ('2', '2019-08-25 07:59:08');
INSERT INTO Logins (user_id, time_stamp) VALUES ('14', '2019-07-14 09:00:00');
INSERT INTO Logins (user_id, time_stamp) VALUES ('14', '2021-01-06 11:59:59');


--Query for The Latest Login in 2020
SELECT user_id, MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id