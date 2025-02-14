CREATE DATABASE L1445
USE L1445


CREATE TABLE Sales (
    sale_date DATE,
    fruit VARCHAR(50),
    sold_num INT,
    PRIMARY KEY (sale_date, fruit));

INSERT INTO Sales VALUES
('2020-05-01', 'apples', 10),
('2020-05-01', 'oranges', 8),
('2020-05-02', 'apples', 15),
('2020-05-02', 'oranges', 15),
('2020-05-03', 'apples', 20),
('2020-05-03', 'oranges', 0),
('2020-05-04', 'apples', 15),
('2020-05-04', 'oranges', 16);

--Query for Apples & Oranges
SELECT sale_date, SUM(CASE WHEN fruit = 'apples' THEN sold_num ELSE 0 END) - SUM(CASE WHEN fruit = 'oranges' THEN sold_num ELSE 0 END) AS diff
FROM Sales
GROUP BY sale_date
ORDER BY sale_date;
