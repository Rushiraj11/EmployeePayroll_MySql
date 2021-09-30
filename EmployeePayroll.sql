show databases;
create database Employeepayroll_service;
use employeepayroll_service;
 
 --- UC2
create table employee_payroll
(
id int not null auto_increment,
name varchar(50) not null,
salary Double not null,
startdate Date not null,
primary key(id)
);
desc employee_payroll;

  -- UC3
  select *from employee_payroll;
insert into employee_payroll(name,salary,startdate)
values('Ram',40000,'2021-09-29');

insert into employee_payroll(name,salary,startdate)
values('Sham',90000,'2021-04-16');

insert into employee_payroll(name,salary,startdate)
values('Raj',65000,'2021-01-15');

insert into employee_payroll(name,salary,startdate)
values('Ria',85000,'2021-11-18');


  ---- UC4
  select *from employee_payroll;
  select name,salary from employee_payroll;
  select name,salary, startdate from employee_payroll;
 
 -- UC5
   
SELECT salary FROM employee_payroll
WHERE name = 'Ria';

select *from employee_payroll;
select * from employee_payroll
WHERE startdate BETWEEN CAST('2021-04-16'AS DATE)
AND CAST('2021-11-18'AS DATE);

select * from employee_payroll
WHERE startdate BETWEEN CAST('2021-04-16'AS DATE)
AND Now();

 --- UC6
alter table employee_payroll add gender char(1) not null;

UPDATE employee_payroll
set gender = 'M'
WHERE id =1;
UPDATE employee_payroll
set gender = 'M'
WHERE id =3;
    
UPDATE employee_payroll
set gender = 'F'
WHERE id =5;

 ---- UC7
select *from employee_payroll;
select sum(salary) from employee_payroll where gender='M';
select sum(salary) from employee_payroll where gender='F';

select avg(salary) from employee_payroll where gender='M';
select avg(salary) from employee_payroll where gender='F';

select max(salary) from employee_payroll where gender='M';
select max(salary) from employee_payroll where gender='F';
 
select min(salary) from employee_payroll where gender='M';
select min(salary) from employee_payroll where gender='F';
 
select count(*) as 'Total_Male_Employee' from employee_payroll  where gender='M';
select count(*) as 'Total_Female_Employee' from employee_payroll  where gender='F';
 
select sum(salary) as 'Salary Sum',gender from employee_payroll group by gender;
--- UC8
select *from employee_payroll;
alter table employee_payroll add phone varchar(20);
alter table employee_payroll add addrerss varchar(80) default' abcde';
alter table employee_payroll add department varchar(20) not null;

desc employee_payroll;
--- UC9
select *from employee_payroll;
alter table employee_payroll rename COLUMN salary To basic_pay;
alter table employee_payroll add deductions int, add taxable int, add income_tax int, add net_pay int;

--- UC10
select *from employee_payroll;
insert into employee_payroll
(name,basic_pay,startDate,gender,department,deductions,taxable,income_tax,net_pay)
values('Terissa','50000','2019-12-01','F','Marketing','4000','6000','10000','30000');
insert into employee_payroll
(name,basic_pay,startDate,gender,department,deductions,taxable,income_tax,net_pay)
values('Terissa','50000','2020-06-01','F','Sales','0','0','0','0');