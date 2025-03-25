CREATE DATABASE L1378
USE L1378

CREATE TABLE Employees (
    id INT,
    name VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id)
);

INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);

--Replace Employee ID With The Unique Identifier
select a.unique_id,b.name from EmployeeUNI a right join Employees b on a.id=b.id