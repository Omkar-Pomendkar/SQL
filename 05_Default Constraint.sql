-- -----------CONSTRAINTS---------------
# SQL constraints are used to specify rules for data in a table.
/*
	1) Default Constraint
*/

use fk;

create table person1
(
id int not null ,
name varchar(50) ,
city varchar(50) default "Mumbai"
);

desc person1;
insert into person1 values (3,"Sanjay Pomendkar",default);

select * from person1;
alter table person1
modify column city varchar(50) default 'Mumbai';

ALTER TABLE person1
ALTER City SET DEFAULT 'Sandnes';

create table if not exists City
(
city_id int not null,
city_name varchar(250) not null ,
city_address varchar(90) not null
);

desc City;

select * from city;

drop table if exists city;