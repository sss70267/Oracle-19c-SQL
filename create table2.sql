DROP TABLE depts;
CREATE TABLE depts(dept_id NUMBER(3) PRIMARY KEY,
dept_name VARCHAR2(20) UNIQUE,
city VARCHAR2(20) NOT NULL);

---CREATE EMPS TABLE---
DROP TABLE emps;

CREATE TABLE emps(emp_id NUMBER(4) PRIMARY KEY,
emp_name VARCHAR2(30) NOT NULL,
job_id VARCHAR2(20),
salary NUMBER(6),
hire_date DATE DEFAULT SYSDATE,
mgr_id NUMBER(4) REFERENCES emps,
dept_id NUMBER(3) REFERENCES depts(dept_id));

---insert depts values---

insert into depts values(10,'檢查課','苗栗縣');
insert into depts values(20,'研磨課','台北市');
insert into depts values(30,'資源回收課','垃圾回收場');
---insert emps values---

insert into emps values(100,'鄭詠升','大老闆',500000,
to_date('2023/09/25','YYYY/MM/DD'),NULL,10);

insert into emps values(101,'邱禹寰','秘書',50000,
to_date('2023/09/25','YYYY/MM/DD'),100,10);

insert into emps values(103,'吳明祥','打雜小弟',30000,
to_date('2023/09/25','YYYY/MM/DD'),100,30);

insert into emps values(102,'謝東峻','打雜小弟',30000,
to_date('2023/09/25','YYYY/MM/DD'),100,30);

---alter data structure---
alter table emps MODIFY job_id varchar2(40);   ---Change column definition---

alter table depts add mrg_id number(4);        ---add new column---1
insert into depts values(40,'新竹市','垃圾棒球場',100);--2
alter table depts set unused(mrg_id);---unused column---3
alter table depts drop unused columns;---4
delete depts where dept_id = 40;  --Delete specified row---

SELECT * FROM EMPS order by emp_id;

select * from depts;

desc depts;---View column types---