  create database temp;
  use temp;
  create table Student
(
stud_id  int,
stud_name varchar(50) not null,
stud_address varchar(50) not null,
stud_bank_balance varchar(50) not null
);

insert into student values (1,"Omkar","Mumbai",1000);
desc Student;
select * from student;

truncate Student;