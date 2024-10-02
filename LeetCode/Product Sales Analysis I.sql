CREATE DATABASE L1068
USE L1068

CREATE TABLE Sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price INT,
    PRIMARY KEY (sale_id, year)
);

INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO Product (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');

--Product Sales Analysis
select p.product_name,s.year,s.price from sales s left join product p on s.product_id = p.product_id 