show databases;
create database learning;
use learning;

-- table created
create table student(
	s_id int primary key,
    s_name varchar(20)
);
select * from student;
insert into student values (2,"Seema"), (3, "Rajesh"), (4, "Saadhana"), (5, "Random");
