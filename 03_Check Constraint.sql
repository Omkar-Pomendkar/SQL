-- -----------CONSTRAINTS---------------
# SQL constraints are used to specify rules for data in a table.
/*
	1) Check Constraint
*/
use fk;
create table Student
(
id int not null primary key auto_increment,
name varchar(255) ,
age int ,
check (age >= 18)
);

desc Student;
drop table Student;
insert into Student values (1,"Omkar",39);
insert into Student values (2,"Omkar Pomendkar",69);

alter table Student
add column	salary int;

desc student;

alter table student
add constraint ch_salary check(salary> 2000);

insert into student values (3,"Sanjay Pomendkar",50,200000);

select * from student;

alter table student
drop check ch_salary ;

