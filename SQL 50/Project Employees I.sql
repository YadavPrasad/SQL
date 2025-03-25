CREATE DATABASE L1075
USE L1075

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    experience_years INT NOT NULL
);

CREATE TABLE Project (
    project_id INT NOT NULL,
    employee_id INT NOT NULL,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO Employee (employee_id, name, experience_years) VALUES (1, 'Khaled', 3);
INSERT INTO Employee (employee_id, name, experience_years) VALUES (2, 'Ali', 2);
INSERT INTO Employee (employee_id, name, experience_years) VALUES (3, 'John', 1);
INSERT INTO Employee (employee_id, name, experience_years) VALUES (4, 'Doe', 2);

INSERT INTO Project (project_id, employee_id) VALUES (1, 1);
INSERT INTO Project (project_id, employee_id) VALUES (1, 2);
INSERT INTO Project (project_id, employee_id) VALUES (1, 3);
INSERT INTO Project (project_id, employee_id) VALUES (2, 1);
INSERT INTO Project (project_id, employee_id) VALUES (2, 4);

SELECT p.project_id,ROUND(AVG(e.experience_years*1.0),2) AS average_years
FROM Project p LEFT JOIN
Employee e ON p.employee_id = e.employee_id
GROUP BY project_id;