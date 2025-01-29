CREATE DATABASE L1440
USE L1440

CREATE TABLE Variables (
    name VARCHAR(50) PRIMARY KEY,
    value INT
);

INSERT INTO Variables VALUES  
('x', 66),
('y', 77);


CREATE TABLE Expressions (
    left_operand VARCHAR(50),
    operator CHAR(1), 
    right_operand VARCHAR(50),
    PRIMARY KEY (left_operand, operator, right_operand),
    FOREIGN KEY (left_operand) REFERENCES Variables(name),
    FOREIGN KEY (right_operand) REFERENCES Variables(name)
);

INSERT INTO Expressions VALUES 
('x', '>', 'y'),
('x', '<', 'y'),
('x', '=', 'y'),
('y', '>', 'x'),
('y', '<', 'x'),
('x', '=', 'x');

SELECT * FROM Variables;
SELECT * FROM Expressions;


--Query for Evaluate Boolean Expression
SELECT 
    CASE WHEN e.operator = '>' THEN CASE WHEN v1.value > v2.value THEN 'true' ELSE 'false' END
         WHEN e.operator = '<' THEN CASE WHEN v1.value < v2.value THEN 'true' ELSE 'false' END
         WHEN e.operator = '=' THEN CASE WHEN v1.value = v2.value THEN 'true' ELSE 'false' END
         ELSE NULL END AS value
FROM Expressions e
LEFT JOIN Variables v1 ON e.left_operand = v1.name
LEFT JOIN Variables v2 ON e.right_operand = v2.name;