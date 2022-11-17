select * from EMPLOYEES;
/*
 AGGREATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS

- count  --> it will count rows
- max    --> it will max value
- min    --> it will min value
- sum    --> it will give total value
- avg    --> it will give average values

 Aggreate functions takes multi row and return one result

 NOTE --> All aggreate function will ignore NULL values
 */
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null; -- 1 - Kimberly, because counting whole row

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null; -- 0 - Kimberly, because counting just one null is ignored => 0

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null; -- 106

select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null; -- 106

select count(distinct FIRST_NAME) from EMPLOYEES;

select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

select count(*) from EMPLOYEES
where SALARY > 6000; --55

select count(COMMISSION_PCT) from EMPLOYEES
where SALARY > 6000; --35


--MAX
select FIRST_NAME,SALARY from EMPLOYEES;

select max(SALARY) from EMPLOYEES;--24000

--MIN
select min(SALARY) from EMPLOYEES;--2100

--AVG

select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY)) from EMPLOYEES;
select round(avg(SALARY),1) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;
select round(avg(SALARY),3) from EMPLOYEES;

--SUM

