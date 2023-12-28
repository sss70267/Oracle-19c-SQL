------drop table totoemps;------

----create table--
create table totoemps
(emp_id number(4),
first_name varchar2(25),
last_name varchar2(25),
department_id number(2),
hire_date date default sysdate,
job_id varchar2(20),
salary number(6),
status nvarchar2(5) default '¥ôÂ¾¤¤',
resume clob
);

---insert value---
insert into totoemps(emp_id,first_name,last_name,department_id,job_id,salary)
values(100,'µú¤É','¾G',10,'data_science',70000);


select * from totoemps;