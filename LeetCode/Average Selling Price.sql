CREATE DATABASE L1251
USE L1251

CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);

CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);

INSERT INTO Prices (product_id, start_date, end_date, price)
VALUES 
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);

INSERT INTO UnitsSold (product_id, purchase_date, units)
VALUES 
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);

--Query for Average Selling Price
SELECT A.product_id,ISNULL(ROUND((CAST(SUM(A.price * B.units) AS FLOAT)/NULLIF(SUM(B.units), 0)), 2), 0) AS average_price
FROM Prices A
LEFT JOIN UnitsSold B ON A.product_id = B.product_id
AND B.purchase_date BETWEEN A.start_date AND A.end_date
GROUP BY A.product_id;
