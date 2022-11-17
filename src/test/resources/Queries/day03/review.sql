select *
from EMPLOYEES;

-- Task 1 :  How many employees working for each manager

select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID;

            --let's order them based count desc

            select MANAGER_ID, count(*) as employees_count
            from EMPLOYEES
            where MANAGER_ID is not null
            group by MANAGER_ID
            order by employees_count desc;

            --ignore manager ID where employees count smaller 6

            select MANAGER_ID, count(*) as employees_count
            from EMPLOYEES
            where MANAGER_ID is not null --> to ignore Steven King(null)
            group by MANAGER_ID
            having count(*) > 6
            order by employees_count desc;


-- Task 2 :  How many locations we have  for each country

select COUNTRY_ID, count(*) as lokations_count
from LOCATIONS
group by COUNTRY_ID;

            --order them based country ID in asc

            select COUNTRY_ID,count(*) as lokations_count
            from LOCATIONS
            group by COUNTRY_ID
            order by COUNTRY_ID;

            --what if I want to see only US and Canada

            select COUNTRY_ID,count(*) as lokations_count
            from LOCATIONS
            where COUNTRY_ID in('US','CA')
            group by COUNTRY_ID
            order by COUNTRY_ID;

            --display where locations count is bigger than 2
            select COUNTRY_ID,count(*) as lokations_count
            from LOCATIONS
            where COUNTRY_ID in('US','CA')
            group by COUNTRY_ID
            having count(*)>2
            order by COUNTRY_ID;

            --add UK

            select COUNTRY_ID,count(*) as lokations_count
            from LOCATIONS
            where COUNTRY_ID in('US','CA','UK')
            group by COUNTRY_ID
            having count(*)>2
            order by COUNTRY_ID;



-- Task 3 :  Display all employees salary in following format as column name Employees Salary
-- Ex :
-- Steven makes 24000
-- Neena makes 17000

select FIRST_NAME||' makes '||SALARY as employees_salary from EMPLOYEES;

select concat(concat(FIRST_NAME,' makes '),SALARY) as employees_salary from EMPLOYEES

