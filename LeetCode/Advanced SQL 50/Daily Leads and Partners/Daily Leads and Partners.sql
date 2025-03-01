CREATE DATABASE L1693
USE L1693

Create table DailySales(date_id date, make_name varchar(20), lead_id int, partner_id int)

insert into DailySales  values ('2020-12-8', 'toyota', '0', '1')
insert into DailySales  values ('2020-12-8', 'toyota', '1', '0')
insert into DailySales  values ('2020-12-8', 'toyota', '1', '2')
insert into DailySales  values ('2020-12-7', 'toyota', '0', '2')
insert into DailySales  values ('2020-12-7', 'toyota', '0', '1')
insert into DailySales  values ('2020-12-8', 'honda', '1', '2')
insert into DailySales  values ('2020-12-8', 'honda', '2', '1')
insert into DailySales  values ('2020-12-7', 'honda', '0', '1')
insert into DailySales  values ('2020-12-7', 'honda', '1', '2')
insert into DailySales  values ('2020-12-7', 'honda', '2', '1')

--Query for Daily Leads and Partners

SELECT date_id, make_name, COUNT(DISTINCT lead_id) AS unique_leads, COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name