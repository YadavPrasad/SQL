CREATE DATABASE L1174
USE L1174

CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE);

INSERT INTO Delivery VALUES
(1, 1, '2019-08-01', '2019-08-02'),
(2, 2, '2019-08-02', '2019-08-02'),
(3, 1, '2019-08-11', '2019-08-12'),
(4, 3, '2019-08-24', '2019-08-24'),
(5, 3, '2019-08-21', '2019-08-22'),
(6, 2, '2019-08-11', '2019-08-13'),
(7, 4, '2019-08-09', '2019-08-09');

--Query for Immeditate Food Delivery II
WITH First_Order AS
(SELECT customer_id,MIN(order_date) as order_date
FROM Delivery
GROUP BY customer_id)

SELECT ROUND(COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 END)*100.0/(COUNT(*)*1.0),2) AS immediate_percentage 
FROM Delivery d
INNER JOIN First_Order f
ON d.order_date = f.order_date AND d.customer_id = f.customer_id