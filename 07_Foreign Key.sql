-- -----------CONSTRAINTS---------------
# SQL constraints are used to specify rules for data in a table.
/*
	1) Foreign Key
*/
create database fk;
use fk;
create table Person
(
personid int not null ,
firstname varchar(50) ,
lastname varchar(50) ,
age int ,
primary key (personid)
);

desc Person;


create table Orders
(
Orderid int not null,
OrderNumber  int not null,
personid int,
primary key (Orderid)
-- constraint FK_PersonOrder foreign key (personid)
-- references person(personid)
);

desc Orders;
desc person;

drop table Orders;

-- ----------DROPING FOREIGN KEY ----------
alter table Orders
drop constraint FK_PersonOrder;

-- ----------Adding foreign key after creation of Table
ALTER TABLE Orders
ADD FOREIGN KEY (personid) REFERENCES person(personid);