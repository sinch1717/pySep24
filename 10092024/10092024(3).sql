use company;
drop table department;

create table departments(
	d_id int primary key auto_increment,
    d_name varchar(20)
);

insert into departments (d_name) values ("Finance");
insert into departments (d_name) values ("Accounts"), ("Hr");
alter table departments auto_increment = 201; -- increment starting from given number
select * from departments;
