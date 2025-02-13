CREATE DATABASE L1173
USE L1173

CREATE TABLE Delivery 
	(delivery_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE);

INSERT INTO Delivery VALUES 
	(1, 1, '2019-08-01', '2019-08-02'),
    (2, 5, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-11'),
    (4, 3, '2019-08-24', '2019-08-26'),
    (5, 4, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13');

--Query for Immediate Food Delivery I

SELECT CAST((SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0) / COUNT(order_date) AS DECIMAL(18, 2)) AS immediate_percentage
FROM Delivery;
