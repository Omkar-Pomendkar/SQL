-- DDL Constraints
-- Primary Key
use temp;
create table Person
(
id int not null primary key,
branch_id int,
firstname varchar(50),
lastname varchar(50),
dob date ,
Gender varchar(5)
); 

select * from person;

-- 2) Foreign key refers primary key of Other Table

create table Orders
(
	orderid int ,
    ordername varchar(50),
    foreign key (orderid) references Person(id)
);

-- drop table Orders;
 
show tables;
select * from Orders;
select * from Person;
desc Orders;
desc Person;

-- 3) Unique Key 4) CHECK 5) DEFAULT

create table Employee
(
	empid int unique,
    empname varchar(50) not null default "user",
    empemail varchar(50),
    primary key (empid) 
);

insert into Employee values (1,default,"omkarpomendkar100@gmail.com");

--  ALTER TABLE 
alter table Employee
add column salary int;

alter table Employee
add column age int check(age>18);


--  ALTER (MODIFY) TABLE 
alter table Employee add check (salary > 10000);

select * from Employee;
desc Employee;

insert into Employee values (5,"milind","milindpanchal23@gmail.com",1000000,19); 
insert into Employee values (6,"ilind","ilindpanchal23@gmail.com",1000000,19); 

select * from Employee;
delete from Employee where empid = 1;

-- On delete Cascade and On delete Null
 