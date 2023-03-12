create database testdb;
use testdb;
create table if not exists Team
(
id int auto_increment,
teamname varchar (250) not null, 
teamcoach varchar (250) not null,
teamplayers varchar (250) not null,
city varchar (250) not null default "Qatar",
playersalary int, check (playersalary > 100000),
primary key (id)
);
drop table Team;
select * from Team;
desc team;
insert into Team (teamname,teamcoach,teamplayers,city,playersalary)values 
("Brazil","Tite","Neymar",default,10000000),
("Argentina","Lionel","Messi","Argentina",2000000),
("Portugal","Fernando Santos","Ronaldo","Portugal",10000000);
select teamname from team where id = 3;
select * from team ;
select * from team where city in ("Qatar");
select * from team where not city = "Qatar";
select * from team where city = "Qatar" or city = "Portugal";
select * from team where city = "Portugal" and teamname = "Portugal"