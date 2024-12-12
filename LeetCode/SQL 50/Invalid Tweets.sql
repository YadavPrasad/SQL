CREATE DATABASE L1683
USE L1683

CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR(255)
);

INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

--Invalid Tweets
select tweet_id from Tweets where LEN(content)>15