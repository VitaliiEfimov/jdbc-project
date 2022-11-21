select *
from EMPLOYEES;

select max(SALARY)
from EMPLOYEES;

select *
from EMPLOYEES
where SALARY = 24000; --hard codded

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

select *
from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);


select max(SALARY) from EMPLOYEES
where SALARY<24000;

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY<24000);

select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY<(select max(SALARY)
                              from EMPLOYEES));


select avg(SALARY)
from EMPLOYEES;
select *
from EMPLOYEES
where SALARY>(select avg(SALARY)
from EMPLOYEES)
order by SALARY desc ;

