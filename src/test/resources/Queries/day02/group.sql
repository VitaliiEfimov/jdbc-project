select *
from EMPLOYEES;

select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'SA_REP';

select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'MK_MAN';

select JOB_ID, avg(SALARY), min(SALARY), max(SALARY), sum(SALARY), count(*)
from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID,sum(SALARY), count(*), round(avg(SALARY)), min(SALARY), max(SALARY)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

select DEPARTMENT_ID,sum(SALARY), count(*), round(avg(SALARY)), min(SALARY), max(SALARY)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY);

select DEPARTMENT_ID,sum(SALARY), count(*), round(avg(SALARY)), min(SALARY), max(SALARY)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY),max(SALARY)desc;

select * from DEPARTMENTS;

select *from LOCATIONS;

select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID
order by 2 desc;--order by count(*) desc

select count(*) from LOCATIONS
group by COUNTRY_ID;

select * from COUNTRIES;

select REGION_ID,count(*) from COUNTRIES
group by REGION_ID;

select REGION_ID,count(*) from COUNTRIES
group by REGION_ID
order by 2 desc ;








