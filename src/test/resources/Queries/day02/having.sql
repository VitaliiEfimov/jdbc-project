select *
from EMPLOYEES;

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000
order by 2 desc;


select JOB_ID, avg(SALARY)
from EMPLOYEES
where (SALARY) > 5000 --where avg(SALARY)>5000 is doesn't work because ave works to the group
group by JOB_ID
order by 2 desc;

select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5
order by 2 desc;



select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1
order by count(*) desc


select FIRST_NAME,count(*) as firstname_count from EMPLOYEES
group by FIRST_NAME
having count(*)>1
order by count(*) desc