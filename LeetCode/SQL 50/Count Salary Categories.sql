CREATE DATABASE L1907
USE L1907

Create table Accounts (account_id int, income int)
insert into Accounts (account_id, income) values ('3', '108939')
insert into Accounts (account_id, income) values ('2', '12747')
insert into Accounts (account_id, income) values ('8', '87709')
insert into Accounts (account_id, income) values ('6', '91796')

--Query for Count Salary Categories
SELECT 'Low Salary' AS category ,SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts

UNION

SELECT 'Average Salary' AS category ,SUM(CASE WHEN income >= 20000 AND income <=50000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts

UNION

SELECT 'High Salary' AS category ,SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts
