-- Sets
-- Set is Applied on Rows and  Joins is applied in Column wise
-- Column should be same and their Datatype
create database sets;
use sets;
-- ---------DEPT 1 ----------
create table if not exists Dept1
(
empid int not null primary key,
name varchar(50) not null,
role varchar(50) not null
);

insert into Dept1 (empid,name,role)
values
(1,"A","engineer"),
(2,"B","salesman"),
(3,"C","manager"),
(4,"D","salesman"),
(5,"E","engineer");

select * from Dept1;

--  -----------DEPT 2 ------------
create table if not exists Dept2
(
empid int not null primary key,
name varchar(50) not null,
role varchar(50) not null
-- foreign key (empid) references Dept1(empid)
);

drop table Dept2;

insert into Dept2 (empid,name,role)
values
(3,"C","manager"),
(6,"F","marketing"),
(7,"G","salesman");

select * from Dept2;

-- List out all  the Employes in Company
select * from dept1
union
select * from dept2;

-- List out all the Employes in department who works as an salesman
select * from dept1 where role = "Salesman"
union
select * from dept2 where role = "Salesman";

--  List out all the Employees who work in all the Department
--  INTERSECT
select * from dept1 inner join dept2 using (empid);
select dept1.* from dept1 inner join dept2 using (empid);

--  List out all the Employees working in Dep1 but not in Dept2
-- MINUS
select dept1.* from dept1 left join dept2 using (empid)
where dept2.empid is null;

select distinct * from Dept2;
