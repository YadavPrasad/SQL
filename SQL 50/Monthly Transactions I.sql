CREATE DATABASE L1193
USE L1193

CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    country VARCHAR(50),
    state VARCHAR(10),
    amount INT,
    trans_date DATE
);

INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');

--Query for Monthly Transaction I
SELECT FORMAT(trans_date, 'yyyy-MM') AS month,country,COUNT(*) as trans_count,
COUNT(CASE WHEN state='approved' THEN 1 END) as approved_count,
SUM(AMOUNT) AS trans_total_amount,SUM(CASE WHEN state='approved' THEN  amount ELSE 0 end) as approved_total_amount
FROM transactions
GROUP BY FORMAT(trans_date, 'yyyy-MM'),country
