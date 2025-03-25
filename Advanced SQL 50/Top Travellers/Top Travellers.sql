CREATE DATABASE L1407
USE L1407

CREATE TABLE Users(id INT, name VARCHAR(30));

CREATE TABLE Rides (id INT,user_id INT,distance INT);

INSERT INTO Users (id, name) VALUES (1, 'Alice');
INSERT INTO Users (id, name) VALUES (2, 'Bob');
INSERT INTO Users (id, name) VALUES (3, 'Alex');
INSERT INTO Users (id, name) VALUES (4, 'Donald');
INSERT INTO Users (id, name) VALUES (7, 'Lee');
INSERT INTO Users (id, name) VALUES (13, 'Jonathan');
INSERT INTO Users (id, name) VALUES (19, 'Elvis');

INSERT INTO Rides (id, user_id, distance) VALUES (1, 1, 120);
INSERT INTO Rides (id, user_id, distance) VALUES (2, 2, 317);
INSERT INTO Rides (id, user_id, distance) VALUES (3, 3, 222);
INSERT INTO Rides (id, user_id, distance) VALUES (4, 7, 100);
INSERT INTO Rides (id, user_id, distance) VALUES (5, 13, 312);
INSERT INTO Rides (id, user_id, distance) VALUES (6, 19, 50);
INSERT INTO Rides (id, user_id, distance) VALUES (7, 7, 120);
INSERT INTO Rides (id, user_id, distance) VALUES (8, 19, 400);
INSERT INTO Rides (id, user_id, distance) VALUES (9, 7, 230);

--Query for Top Travellers
SELECT u.name, ISNULL(SUM(r.distance), 0) AS travelled_distance
FROM users u
LEFT JOIN rides r
ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY travelled_distance DESC

