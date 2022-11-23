select *
from EMPLOYEES;

--find the 3rd maximum salary from the employees table (do not  include duplicates)
------first sort salaries in desc without duplicates
select distinct SALARY from EMPLOYEES order by SALARY desc;

------ get me 3rd max salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<4;

------ get me information who is getting 3rd highest salary
select * from EMPLOYEES
where SALARY=(select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
              where ROWNUM<4);




--find the 3rd minimum salary from the employees table (do not  include duplicates)
select SALARY from EMPLOYEES;

------first sort salaries in desc without duplicates
select distinct SALARY from EMPLOYEES order by SALARY;

------ get me 3rd min salary
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY)
where rownum<4;

------ get me information who is getting 3rd highest salary
select * from EMPLOYEES
where SALARY=(select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY)
              where rownum<4);