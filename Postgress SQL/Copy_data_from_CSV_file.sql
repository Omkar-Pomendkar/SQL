create table famliy
(
SrNo integer primary key,
Firstname varchar ,
Surname varchar ,
Age integer ,
Relaionship varchar
);

select * from famliy;

copy famliy(SrNo,Firstname,Surname,Age,Relaionship)
from 'D:\DATA ENGINEERING\SQL\Postgress SQL\Data.csv'
delimiter ','
csv header;