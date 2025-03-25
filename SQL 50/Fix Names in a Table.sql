CREATE DATABASE L1667
USE L1667

CREATE TABLE Users (user_id INT PRIMARY KEY,name VARCHAR(255));
INSERT INTO Users VALUES (1, 'aLice'),
                         (2, 'bOB');

--Query for Fix Names in a Table
SELECT user_id , UPPER(LEFT(name,1))+LOWER(SUBSTRING(name,2,LEN(name))) AS name
FROM users
ORDER BY user_id

