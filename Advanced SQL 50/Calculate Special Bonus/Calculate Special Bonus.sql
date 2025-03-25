CREATE DATABASE L1873
USE L1873

Create table Employees (employee_id int, name varchar(30), salary int)

insert into Employees (employee_id, name, salary) values ('2', 'Meir', '3000')
insert into Employees (employee_id, name, salary) values ('3', 'Michael', '3800')
insert into Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400')
insert into Employees (employee_id, name, salary) values ('8', 'Juan', '6100')
insert into Employees (employee_id, name, salary) values ('9', 'Kannon', '7700')

--Query for Calculate Special Bonus
SELECT employee_id, CASE WHEN (employee_id % 2 = 1) AND (LOWER(name) NOT LIKE 'm%') THEN salary ELSE 0 END AS bonus
FROM employees
ORDER BY employee_id;
