-- -----------CONSTRAINTS---------------
# SQL constraints are used to specify rules for data in a table.

/* 
	1) NOT NULL CONSTRAINT
	2) Unique 
    3) Primary Key
    4)
*/
create database constraints;
use constraints;

create table person
(
id int not null,
first_name varchar(50),
last_name varchar(50),
middle_name varchar(50),
Address varchar(50),
age int
);

desc person;

-- ------ALTER TABLE to NOTNULL VALUE ----------
alter table Person
modify column first_name varchar(60) not null;

-- ------ALTER TABLE to UNIQUE VALUE ----------
alter table Person
modify column first_name varchar(60) not null unique;

create table student
(
Stud_id int not null,
Stud_name varchar(50) primary key,
Stud_Address varchar(90) ,
Stud_Salary int 
);

desc student;

# ------------ ADDING CONSTRAINT ------------
create table Employee
(
empid int,
empname varchar(80) ,
empsalary int ,
constraint emp_primarykey primary key (empid , empname)
);

describe Employee;

#--------Droping a Constraint----------
alter table Employee
drop index emp_primarykey;

-- -------- PRIMARY KEY -----------
create table UserSearch
(
userid int not null,
username varchar(50),
usersalary int,

constraint user_pkkey primary key (userid,username)
);

alter table usersearch
drop primary key;

desc usersearch;