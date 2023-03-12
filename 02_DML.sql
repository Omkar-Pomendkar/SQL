-- --------DML Command -------------------
/*
DQL - Data Query Language 
1) Select - Helps us to select data frome Table
DDL - Data Manuplation Language
1) Insert - use to insert values in Table
2) Update - helps us to update single and multiple records with Where Clause
3) Delete - Delete is used to delete existing Record
4) Call
5) Exlpain Call
6) Lock

*/

create database DML;
use DML;
create table Employee
(
id int not null,
emp_name varchar(50),
emp_Address varchar(50),
emp_salary int
);

select * from Employee;

-- -------1) INSERT----------
insert into Employee (id,emp_name,emp_address,emp_salary) 
values (1,"omkar pomendkar","Mumbai",100000);

-- -------2) INSERT ------------
insert into Employee values
(2,"sanjay pomendkar","Delhi",200000),
(3,"shraddha pomendkar","Delhi",200000),
(4,"surbhi pomendkar","Delhi",200000);

-- -------UPDATE ----------
update Employee 
set id = 22 , emp_name = "chaitanya pomendkar" 
where id = 1;

-- ---------DELETE -------------
delete from employee where id = 22;