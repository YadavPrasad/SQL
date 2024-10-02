CREATE DATABASE L1581
USE L1581

CREATE TABLE Visits (
    visit_id INT,
    customer_id INT,
    PRIMARY KEY (visit_id)
);

INSERT INTO Visits (visit_id, customer_id) VALUES
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

CREATE TABLE Transactions (
    transaction_id INT,
    visit_id INT,
    amount INT,
    PRIMARY KEY (transaction_id)
);

INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);

--Customer Who Visited but Did Not Make Any Transactions

select v.customer_id,count(v.visit_id) as count_no_trans 
from Visits v left join Transactions t on v.visit_id = t.visit_id
where t.transaction_id is null
group by customer_id