select * from EMPLOYEES;

select FIRST_NAME from EMPLOYEES;

select FIRST_NAME as given_name from EMPLOYEES;

select FIRST_NAME as "given name" from EMPLOYEES;

select FIRST_NAME, SALARY*12 as annual_alary from EMPLOYEES;



select *from EMPLOYEES;

select FIRST_NAME,EMAIL||'@gmail.com' as full_email from EMPLOYEES;

select 5||5 as full_email from EMPLOYEES;


select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

select concat('Cydeo ',concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

