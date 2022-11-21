select * from EMPLOYEES;

-- Part 1 -- Select - Distinct - Where - Order By - Like - Group By - Having
-- -- 1. List all the employees first and last name with their salary in employees
-- table
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

-- -- 2. How many employees have salary less than 5000?
select SALARY from EMPLOYEES
where SALARY<5000;

-- -- 3. How many employees have salary between 6000 and 7000?
select SALARY from EMPLOYEES
where SALARY between 6000 and 7000;

-- -- 4. List all the different region_ids in countries table
select distinct REGION_ID from COUNTRIES;

-- -- 5. display the salary of the employee Grant Douglas (lastName: Grant,
-- firstName: Douglas)
select FIRST_NAME,LAST_NAME,SALARY
from EMPLOYEES
where FIRST_NAME='Douglas' and LAST_NAME='Grant';

-- -- 6. display all department information from departments table
select * from DEPARTMENTS
-- -- if the department name values are as below
-- -- IT , Public Relations , Sales , Executive
where DEPARTMENT_NAME in('IT','Public Relations','Sales','Executive');

-- -- 7. display the maximum salary in employees table


-- -- 8. display the the minimum salary in employees table
-- -- 9. display the average salary of the employees;
-- -- 10. count the total numbers of the departments in departs table
-- -- 11. sort the start_date in ascending order in job_history's table
-- -- 12. sort the start_date in descending order in job_history's table
-- -- 13. display all records whose last name contains 2 lowercase 'a's
-- -- 14. display all the employees whose first name starts with 'A'
-- -- 15. display all the employees whose job_ID contains 'IT'
-- -- 16. display all  unique job_id that end with CLERK in employee table
-- -- 17.display all  employees first name starts with A and have exactly 4 characters
-- Total
-- -- 18. display all the employees whose department id in 50, 80, 100
-- -- 19. display all employees who does not work in any one of these department id
-- 90, 60,  100, 130, 120
-- -- 20. divide employees into groups by using thier job id
-- -- 1 display the maximum salaries in each groups
-- -- 2 display the minium salaries in each groups
-- -- 3 display the average salary of each group
-- -- 4 how many employees are there in each group that have minimum
-- salary of 5000 ?
-- -- 5 display the total budgests of each groups
-- -- 21. display all job_id and average salary who work as any of these jobs IT_PROG,
-- SA_REP, FI_ACCOUNT, AD_VP
-- -- 22.display max salary  for each department
-- -- 23. display total salary for each department except department_id 50, and where
-- total salary >30000