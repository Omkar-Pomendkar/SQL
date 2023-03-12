-- Alias 
/* Giving refrence name to the Coulmn */

-- Joins
/*
For Applying Joins there must be common AttributePrimary Key and Foreign Key 
*/

-- Syntax 
/*
Inner Join
select c.* ,o.* from customer as c innerjoin Order as o
on c.id = o.cust_id;

Outer Join
Left Join
select c.*,o.* from customer as c left join Order as optimize
on c.id = o.cust_id;

Right Join
select c.*,o.* from customer as c left join Order as o
on c.id = o.cust_id;

Full join
select c.*,o.* from customer as c left join Order as o leftjoin
on c.id = o.cust_id;
Unioun
select c.*,o.* from customer as  c right join Order as o leftjoin
on c.id = o.cust_id;
*/

/*
Cross Join
Natural Join
*/
use temp;

create table Students 
(
studentid int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key (studentid) 
);

select * from Students;
insert into Students values 
(1,"Omkar","Pomendkar",22),
(2,"Nitin","Kale",22),
(3,"Milind","Panchal",25),
(4,"Sunil","Mane",28);


create table department
(
	student_id int auto_increment,
    department_name varchar(25) not null,
    foreign key (student_id) references Students(studentid)
);

desc department;

insert into department values
(1,"Computer Science"),
(2,"Electronics"),
(3,"Mechanical");

select * from Students;
select * from department;

desc department;
desc Students;

select s.*,d.* from Students as s inner join department as d 
on s.studentid = d.student_id;


select s.*,d.* from Students as s left join department as d 
on s.studentid = d.student_id
union
select s.*,d.* from Students as s right join department as d 
on s.studentid = d.student_id