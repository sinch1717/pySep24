show databases;
create database practiceData;
show databases;
-- writing comments, mysql is case insensitive
-- control + enter = fire query

use practicedata;
create table practicedata.food_items(
	f_id  int, 
    f_name  varchar(80),
    f_price  int
);
show tables;
select * from food_items;

create table trial(
t_id int,
t_name varchar(20)
);
-- select * from trial;


insert into trial values (1, "Python");
insert into trial values (1, "Java"); 
select * from trial;

create table food_items(
	food_id int primary key, -- for unique identification
    food_name varchar(20)
);
show tables;
select * from food_items;
insert into food_items values (1, "Sand");
select * from food_items;
insert into food_items values (2, "Coke");
select * from food_items;

-- update
update food_items set food_name = "Pepsi" where food_id = 2;

-- delete
delete from food_items where food_id = 1;
select * from food_items;

-- altering a table
alter table food_items add food_price int;
select * from food_items;


-- adding multiple values
insert into food_items values (3, "Samosa", 30), (4, "Ice-cream", 40);
select * from food_items;


update food_items set food_price = 20 where food_id = 3;
update food_items set food_price = 25 where food_id = 2;
select * from food_items;

-- deleting a column using drop
alter table food_items drop food_name;
select * from food_items;


-- difference between delete and truncate 
-- delete: delete one particular row
-- truncate : delete everything except heading
-- drop : delete everything including heading 
-- delete
delete from food_items where food_id = 4;
select * from food_items;

-- truncate
truncate table food_items;
select * from food_items;

-- drop 
drop table food_items;