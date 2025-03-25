CREATE DATABASE L1729
USE L1729

CREATE TABLE Followers (
    user_id INT,
    follower_id INT,
    PRIMARY KEY (user_id, follower_id)
);

INSERT INTO Followers VALUES (0, 1),(1, 0),(2, 0),(2, 1);

--Query for Find Followers Count
SELECT DISTINCT user_id,count(*) as followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id 