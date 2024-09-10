-- joins
create database my_institute;
use my_institute;

-- table created: courses
create table courses(
	c_id int primary key,
    c_name varchar(20)
);
insert into courses values (1, "java"), (2, "python"), (3, "js");

-- table created: students
create table students(
	s_id int primary key,
    s_name varchar(20),
    c_id int
);
insert into students values (101, "raj", 2), (102, "megha", 5), (103, "rajan", 3), (104, "ajay", 6);


-- inner join for common values, same as join
select * from courses inner join students 
on courses.c_id = students.c_id; -- can use AS to label it under something

-- left join
-- entire left table, common values from the right table
select * from courses left join students 
on courses.c_id = students.c_id;
-- union

-- right join
-- entire right table, common values from the left table
select * from courses right join students 
on courses.c_id = students.c_id;

-- full outer join is not supported in mySQL


