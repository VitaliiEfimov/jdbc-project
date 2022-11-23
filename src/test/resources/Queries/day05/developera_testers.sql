create table Developers
(
    Id_Number Integer primary key,
    Names     varchar(30),
    Salary    Integer
);
create table Testers
(
    Id_Number Integer primary key,
    Names     varchar(30),
    Salary    Integer
);

insert into developers
values (1, 'Mike', 155000);
insert into developers
values (2, 'John', 142000);
insert into developers
values (3, 'Steven', 850000);
insert into developers
values (4, 'Maria', 120000);
insert into testers
values (1, 'Steven', 110000);
insert into testers
values (2, 'Adam', 105000);
insert into testers
values (3, 'Lex', 100000);

commit work;

select *
from Developers;
select *
from Testers;

select *
from Developers
union
select *
from Testers;

select *
from Developers
union all
select *
from Testers;

select Names
from Developers
union
select Names
from Testers
order by 1 desc;

select Id_Number
from Developers
union
select Id_Number
from Testers
order by 1 desc;


select *
from Developers
minus
select *
from Testers;

select Names
from Developers
minus
select Names
from Testers;

select Names
from Testers
minus
select Names
from Developers;

select *
from Developers
intersect
select *
from Testers;

select Names
from Developers
intersect
select Names
from Testers;

