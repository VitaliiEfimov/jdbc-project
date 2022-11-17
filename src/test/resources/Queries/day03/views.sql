select *
from EMPLOYEES;


create view EmployeesInfo as
select substr(FIRST_NAME, 0,1) || '.' || substr(LAST_NAME, 0,1) || '.' as initials,
FIRST_NAME || ' makes ' || SALARY as employees_salary
from EMPLOYEES;


select * from EMPLOYEESINFO;
-- drop view EMPLOYEESINFO will delete view

select INITIALS from EMPLOYEESINFO;
