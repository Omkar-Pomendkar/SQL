 -- Create or Drop Database before creating table and use that Database
 
 -- Create Database Database_name;
 -- use database_name;
 -- drop database_name

create database DDL;
use DDL;

-- DDL Commands (Data Defination Language) 
/*
1) CREATE  - Use to Create Databse
2) ALTER   - Use to add,delete and Modify Columns in Table , Use to add and drop various constraint in existing Table
	a) ADD
    b) MODIFY
3) DROP    - Use to drop database,Table ,Column
4) TRUNCATE - Removes all the TUples from Table
5) RENAME - Use to rename Database,column,Table Name

*/
/*
---------CREATE--------
Don't Forget to put Semicolon
create table table_name
(
column_name1 datatype size,
column_name2 datatype size,
column_name3 datatype size,
);

------DESCRIBE---------
describe the Attributes (Column) of Database
desc table_name;
*/


create table Student
(
stud_id  int,
stud_name varchar(50) not null,
stud_address varchar(50) not null,
stud_bank_balance varchar(50) not null
);

desc Student_details;

-- --------RENAME OLD TABLE TO NEW TABLE--------
alter table Student
rename to Student_Details;

-- ---------ADD COLUMN IN TABLE -----------------
alter table student_details
add stud_house varchar(25) ;

-- -------DELETE THE COLUMN FROM THE TABLE -----------
alter table student_details
drop column stud_house; 

-- ----------RENAME COLUMN NAME  ---------------------
alter table student_details
rename column stud_id to stud_roll_no;

describe student_details;

-- ------------TRUNCATE TABLE REMOVES DATA AND STRUCTURE REMAINS AS IT IS------------------
truncate Student1233344;