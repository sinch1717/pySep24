show databases;
create database company;
use company;

-- table created: employee
create table employee(
	e_id int primary key,
    e_name varchar(30)
);
insert into employee values (101, "Raj"), (102, "Megha"), (103, "Vijay");

-- table created: departments
create table departments(
	dep_id int primary key,
    dep_name varchar(20),
    e_id int,
    foreign key (e_id) references employee(e_id)
);
insert into departments values (1, "Accounts", 102), (2, "HR", 101), (3, "Finance", 102); -- 105 shows foreign key error

-- adding salary to employee table
alter table employee add e_salary int;
select * from employee;
insert into employee values (104, "Nidhi", 20000), (105, "Tharun", 30000), (106, "Lahari", 40000);
UPDATE employee SET e_salary = 10000 WHERE e_id = 101;
UPDATE employee SET e_salary = 50000 WHERE e_id = 102;
UPDATE employee SET e_salary = 60000 WHERE e_id = 103;