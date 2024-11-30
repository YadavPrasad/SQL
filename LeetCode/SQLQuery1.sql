create database Practicals
use Practicals
create table student(Regno int primary key,name varchar(20),Mark int)
exec sp_columns student -- you have to use desc keyword (desc student) <- Master table.
insert into student values(1,'sabari',100)
insert into student values(2,'yadav',0)
insert into student values(3,'?',50)
select * from student
alter table student add grade char -- adding column grade into the student table.
update student set grade='A' where mark>=91 and mark<=100
update student set grade='B' where mark>=81 and mark<=90
update student set grade='C' where mark>=71 and mark<=80
update student set grade='D' where mark>=60 and mark<=70
update student set grade='E' where mark<60
select * from student
--EX No 1:
create table branch_m(branch_name varchar(20) primary key,branch_city varchar(20),assest int)
create table account_m(account_no varchar(20) primary key,branch_name varchar(20),balance int,foreign key(branch_name) references branch_m(branch_name))
-- foreign key[column_name] references reference_table_name[column_name]
create table customer_m(customer_id varchar(20) primary key,customer_name varchar(20),customer_street varchar(20),customer_city varchar(20))
create table loan_m(loan_no varchar(20) primary key,branch_name varchar(20),amount int,foreign key(branch_name) references branch_m(branch_name))
insert into branch_m values('Perryridge','Rye',50000)
insert into branch_m values('DownTown','Stamford',100000)
insert into branch_m values('Brighton','Paloalto',25000)
insert into branch_m values('Redwoord','Harrison',150000)
insert into branch_m values('Mianus','Pitsfield',450000)
insert into branch_m values('Roundhill','Princeton',150000)
insert into loan_m values('1_11','Roundhill',900)
insert into loan_m values('1_14','DownTown',1500)
insert into loan_m values('1_15','Perryridge',1500)
insert into loan_m values('1_16','Perryridge',1300)
insert into loan_m values('1_17','DownTown',1000)
insert into customer_m values('c_01','Smith','north','Rye')
insert into customer_m values('c_02','Turner','putnam ','Stamford')
insert into customer_m values('c_03','Johnson','alma','Paloalto')
insert into customer_m values('c_04','Curry','north','Rye')
insert into customer_m values('c_05','Jones','main','Harrison')
insert into account_m values('019_28_3746','Perryridge',1500)
insert into account_m values('182_73_6091','DownTown',1800)
insert into account_m values('192_83_7465','Brighton',500)
insert into account_m values('963_96_3969','Roundhill',900)
insert into account_m values('376_66_9999','Mianus',1300)

--Q:select all the branch name from loan_m.
select branch_name from loan_m
--Q:Find the names of all branches in loan relation eliminate duplicate. 
select distinct branch_name from loan_m
--Q:Update customer city Stamford to rye in customer relation.
update customer_m set customer_city='rye' where customer_city='Stamford'
--Q:Show the effects of savepoint and rollback command using delete query with example.

--Start a new transaction
Begin transaction --you need  to use [start transaction;] instead of begin transaction.

--Select the required table 
select * from loan_m

--Create a savepoint
Save transaction S1;

-- Perform delete query
delete from loan_m
select * from loan_m
-- Roll back to the savepoint

Rollback Transaction S1 --you need to use [rollback to S1;]
`
-- Verify the data
select * from loan_m
--EX No 2:
--SIMPLE QUERIES:
--Display the loan relation with attributes amount multiplied by 100.
select amount*100 from loan_m
--Q: Find all numbers for loan  ade at perryridge branch with loan amount greater than 1400.
select loan_no from loan_m where branch_name='Perryridge' and amount>1400
--Q:Find all the names of the customer whose street names includes the character r in the third postion.
select customer_name from customer_m where customer_street like '__r%'
--Q:Find all the names of the customer_m whose street name starts with substring 'ma'.
select customer_name from customer_m where customer_street like '%ma'
--Q:Display the entire loan relation in descending order of amount.
select * from loan_m order by amount desc
--Q:Find total number of customer.
select count(customer_id) from customer_m
--Q:Find all the loan number that appears in the loan relation with NULL values for ammount.
select loan_no from loan_m where amount is null
--NESTED AND SUB QUERIES:
--Q:Find all the name of the branches that have assests greater than atleast one bank located in Standford.
select branch_name from branch_m where assest>ANY(select assest from branch_m where branch_city='Standford')
--Q:Find the name of all the branches that have assests greater than those atleast one branch located in Harrison
select branch_name from branch_m where assest>ANY(select assest from branch_m where branch_city='Harrison')