select *from EMPLOYEES;
-- 1. display full addresses from locations table in a single column
select * from LOCATIONS;
select STREET_ADDRESS||','||POSTAL_CODE||','||CITY||','||LOCATIONS.STATE_PROVINCE||','||COUNTRY_ID as Full_Address from LOCATIONS;
--where set(STATE_PROVINCE is null,'null');

-- 2. display all information of the employee who has the minimum salary in employees table
select * from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES);

-- 3. display the second minimum salary from the employees
select min(SALARY) from EMPLOYEES
where SALARY>(select min(SALARY) from EMPLOYEES);

-- 4. display all information of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES
where SALARY>(select min(SALARY) from EMPLOYEES));

-- 5. list all the employees who are making above the average salary;
select * from EMPLOYEES
where SALARY>(select avg(SALARY) from EMPLOYEES);

-- 6. list all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY<(select avg(SALARY) from EMPLOYEES);

-- 7. display manager name of 'Neena'
select FIRST_NAME from EMPLOYEES
where FIRST_NAME='Neena';
-- displays the ManagerId of Neena's manager => 100 (Steven King's ID)
select  FIRST_NAME || ' ' || LAST_NAME as "Manager Name" from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES where FIRST_NAME = 'Neena');
-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select max(SALARY) from  EMPLOYEES; -- displays the max salary amount
select distinct  SALARY from  EMPLOYEES
order by SALARY desc ; -- sorts the unique salary amounts in the desc order
select  min(SALARY) from (select distinct  SALARY from  EMPLOYEES
                          order by SALARY desc)
where ROWNUM <= 3; -- returns the 3rd highest salary
-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
select max(SALARY) from EMPLOYEES;
select distinct SALARY from EMPLOYEES
order by SALARY desc ;
select min(SALARY) from (select distinct SALARY from EMPLOYEES
               order by SALARY desc )
where ROWNUM<6;

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY desc )
where ROWNUM<8;
-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY desc )
where ROWNUM<11;
-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY )
where ROWNUM<4;
-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY )
where ROWNUM<6;