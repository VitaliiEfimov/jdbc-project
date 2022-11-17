select *
from EMPLOYEES;

select *
from EMPLOYEES
where ROWNUM < 11;

select *
from EMPLOYEES
where ROWNUM <= 5
order by SALARY desc;

select *
from (select *
      from EMPLOYEES
      order by SALARY desc)
where ROWNUM < 6;

select *
from (select distinct SALARY,FIRST_NAME from EMPLOYEES order by SALARY desc )
where ROWNUM <= 5

select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM <= 5;

select * from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by SALARY desc )
                where ROWNUM < 6)
