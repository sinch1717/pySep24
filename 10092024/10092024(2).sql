-- wild card for company database, table employee
use company;
select e_name, e_salary from employee where e_name like '%a';

-- aggregate functions (count, max, avg)
select count(*) from employee;
select max(e_salary) as highest from employee;
select min(e_salary) from employee;
select sum(e_salary) from employee;
select round(avg(e_salary),2) from employee; -- to get correct to 2 decimal places

select * from employee;
select * from employee where e_salary > 40000 or e_name = 'Vijay';
select * from employee order by e_salary asc; -- can be descending (desc)
select * from employee order by e_salary desc limit 4; -- top four
select e_salary from employee limit 2;

-- find the third highest salary
SELECT * FROM employee ORDER BY e_salary DESC LIMIT 1 OFFSET 2;
select * from employee order by e_salary desc limit 1,2; -- leave the first part, show the second part
select * from employee order by e_salary desc limit 2,2; -- leave first two rows, show the next two

desc employee; -- describe
describe employee; -- describe