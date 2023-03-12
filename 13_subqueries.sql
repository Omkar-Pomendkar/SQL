-- Subqueries
-- Joins ka alternative method hai Subqueries
-- Outer Queries (Inner Queries)
-- Generally Outer Queries Depend on Inner Queries

create database Subquery;
use subquery;

create table if not exists employee
(
id int not null primary key,
fname varchar(50) not null,
lname varchar(50) not null,
age int ,
emailID varchar(50) not null,
phoneno int not null,
city varchar(50)
);

select * from employee;

insert into employee 
(id,fname,lname,age,emailID,phoneno,city)
values
(1,"Aman","Proto",32,"aman@gmail.com",892,"Delhi"),
(2,"Yagya","Narayan",44,"yagya@gmail.com",222,"Palam"),
(3,"Rahul","BD",22,"rahul@gmail.com",444,"Kolkata"),
(4,"Jatin","Hermit",31,"jatin@gmail.com",666,"Raipur"),
(5,"PK","Pandy",21,"pk@gmail.com",555,"Jaipur");

-- ---------CLIENT-------------------
create table if not exists client
(
id int not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
age int not null,
emailID varchar(50) not null,
phoneno int not null,
city varchar(50),
empID int,
foreign key (empID) references employee(id)
);

drop table client;
desc client;

insert into client 
(id,first_name,last_name,age,emailID,phoneno,city,empID)
values
(1,"Mac","Rogers",47,"mac@hotmail.com",333,"Kolkata",3),
(2,"Max","Poireir",27,"max@gmail.com",222,"Kolkata",3),
(3,"Peter","Jain",24,"peter@abc.com",333,"Delhi",1),
(4,"Sushant","Agarwal",23,"sushant@yahoo.com",333,"Hyderabad",5),
(5,"Pratap","Singh",36,"p@xyz.com",333,"Mumbai",2);

select * from Client;
desc client;

-- ---------PROJECT-------------------
create table if not exists project
(
id int not null primary key,
empID int,
name varchar(50) not null,
startdate date,
clientid int not null,
foreign key (empID) references employee(id),
foreign key (clientid) references client(id)
);

desc project;

insert into project
(id,empID,name,startdate,clientid)
values
(1,1,"A","2021-04-21",3),
(2,2,"B","2021-03-12",1),
(3,3,"C","2021-01-16",5),
(4,3,"D","2021-04-27",2),
(5,5,"E","2021-05-01",4);

--  operating on Sub Queries------------
-- Search employees > 30 uisng where clause

select * from employee where age in (select age from employee where age > 30);
select * from employee where age > 30;

-- where clause diferent table
-- emp details working in more then 1 project
select * from employee where id in (select empID from project group by empID having (count(empID) > 1));

--  single value Subquery
-- employe average age having greater then age
select * from employee;
select * from employee where age > (select avg(age) from employee);
select avg(age) from employee;

-- In from clause which ever we called as Derived Tables for that we have to create an alias
-- select maximum age person whose firstname starts from a 
select * from Employee;
select max(age) from (select * from Employee where fname like '%a%') as temp;

-- Corelated Subquery
select *
from Employee as e1
where 3 = (
select count(e2.age)
from Employee e2
where e2.age >=e1.age);


-- SQL Views
select * from Employee;

create view custom_view as (select id,fname,lname from Employee);
select * from custom_view;

-- alter View
alter view custom_view as select id from Employee;

-- drop view 
drop view custom_view ;