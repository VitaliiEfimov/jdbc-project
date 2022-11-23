select *from EMPLOYEES;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table scrumTeam(
    empid INTEGER primary key ,--empid=employer ID
    firstName varchar(30) not null ,
    jobTitle varchar(20) not null ,
    age integer,
    salary integer
);

select * from scrumTeam;

insert into scrumTeam(empid, firstName, jobTitle, age, salary)
values (1,'Mike', 'Tester', 34, 120000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (2,'John','Tester',32,130000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (3,'John','Developer',37,160000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (4,'Dembe','Developer',42,200000);

commit;


UPDATE scrumTeam
set salary=salary+5000;

UPDATE scrumTeam
set salary=salary-5000;

UPDATE scrumTeam
set salary=salary+20000
where jobTitle='Tester';

UPDATE scrumTeam
set salary=salary+10000
where age>40;

select * from scrumTeam
order by empid;

commit ;

DELETE from scrumTeam
where empid=1;

select *from scrumTeam;

DELETE from scrumTeam
where jobTitle='Developer' and age>40;

select *from scrumTeam;

commit ;


ALTER TABLE scrumTeam
    add gender varchar(10);


update scrumTeam
set gender='Male'
where empid=2;

ALTER TABLE scrumTeam rename column salary to annual_salary;

ALTER TABLE scrumTeam drop column gender;

ALTER TABLE scrumTeam rename to agileteam;

select *from agileteam;

commit ;

truncate table agileteam;

drop table agileteam;

commit ;
