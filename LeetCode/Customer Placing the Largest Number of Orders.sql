CREATE DATABASE L586
USE L586

CREATE TABLE Orders (
    order_number INT PRIMARY KEY,
    customer_number INT
);

INSERT INTO Orders (order_number, customer_number) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);

--Customer Placing the Largest Number of Orders
select top 1 customer_number
from Orders
group by customer_number
order by count(customer_number) desc
