CREATE DATABASE L1633
USE L1633

CREATE TABLE Users (user_id INT PRIMARY KEY,user_name VARCHAR(50));

INSERT INTO Users VALUES(6,'Alice'),(2,'Bob'),(7,'Alex');

CREATE TABLE Register(contest_id INT,user_id INT,PRIMARY KEY (contest_id, user_id),FOREIGN KEY (user_id) REFERENCES Users(user_id));

INSERT INTO Register VALUES (215,6),(209,2),(208,2),(210,6),(208,6),(209,7),(209,6),(215,7),(208,7),(210,2),(207,2),(210,7);

--Query for Percentage of Users Attended a Contest
SELECT r.contest_id,ROUND(COUNT(DISTINCT r.user_id)*100.0/(SELECT COUNT(*) FROM Users),2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;
