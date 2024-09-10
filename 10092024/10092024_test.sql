create database electronics;
use electronics;

-- table created: products
create table products(
	p_id int primary key auto_increment,
    p_name varchar(20)
);
alter table products auto_increment=5001;
select * from products;
insert into products(p_name) values ('mobile'), ('laptop'), ('mouse'), ('charger');

-- table created: location
create table location(
	 city_id int primary key,
     city_name varchar(20),
     product_id int
);
insert into location values (1, 'goa', 5002), (2, 'Mysuru', 5009), (3, 'Pune', 5001);


-- left join
select * from products left join location
on location.product_id = products.p_id;