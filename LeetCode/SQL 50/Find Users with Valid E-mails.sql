CREATE DATABASE L1517
USE L1517

CREATE TABLE Users (
	user_id INT PRIMARY KEY,
    name VARCHAR(255),
    mail VARCHAR(255)
	);

INSERT INTO Users VALUES
(1, 'Winston', 'winston@leetcode.com'),
(2, 'Jonathan', 'jonathanisgreat'),
(3, 'Annabelle', 'bella-@leetcode.com'),
(4, 'Sally', 'sally.come@leetcode.com'),
(5, 'Marwan', 'quarz#2020@leetcode.com'),
(6, 'David', 'david69@gmail.com'),
(7, 'Shapiro', '.shapo@leetcode.com');

--Query for Find Users with Valid E-mails
SELECT *
FROM users
WHERE RIGHT(mail,13) = '@leetcode.com' AND LEFT(mail,1) LIKE '[a-zA-Z]%' 
AND LEFT(mail , LEN(mail)-13) NOT LIKE '%[^a-zA-Z0-9_.-]%'
