--  DQL Data Query Language
use org;
select * from worker;

select first_name , last_name from worker;

-- Order of Exceution is from right to left

select now();

select ucase("omkar pomendkar");
select lcase("omkar pomendkar");

-- 1) WHERE CLAUSE is used to reduces the Rows
select * from worker where first_name = "Niharika";

-- 2) BETWEEN CLAUSE make use of and Keyword
select * from worker;
select * from worker where salary between 10000 and 100000;

-- 3) IN and NOT CLAUSE it is used to reduces OR Conditions
select * from worker where department not in ('HR','Admin');

-- 4) IS NULL 
select * from worker where salary is not null;

-- 5) Pattern Searching (Wild Card)
--  %pa%
select * from worker where first_name like '%i%';

-- SORTING
-- 6) ORDER BY  (Default it is Ascending)
select * from worker;
select * from worker order by salary desc;
select * from worker order by worker_id desc;

-- 7) DISTINCT (similar)
select distinct department from worker;
select distinct salary from worker;

-- 8) GROUP BY Data Grouping -> Aggregation Function
-- Find no of EMployees working in different Department 
/* Whatever you are writing between Select and from  
after group by you should write the same */
select department , count(department) from worker group by department;

-- AVG SALARY
select department , avg(salary) from worker group by department; 

-- MIN SALARY
select department , min(salary) from worker group by department; 

-- MAX SALARY
select department , max(salary) from worker group by department; 

-- SUM SALARY
select department , sum(salary) from worker group by department; 

select * from worker;
select department,count(department) from worker group by department;
select department,max(salary) from worker group by department;
select department,min(salary) from worker group by department;

-- 9) Having keyword is used with Groupby for filtering with giving Condition
select department , count(department) from worker group by department having count(department) > 3;
  
-- where Vs Having
/*

*/ 
show databases;
use omkar;
show tables;
desc student;
select * from omkar.student;