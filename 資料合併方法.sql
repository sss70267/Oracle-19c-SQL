-----自然合併-----
select employee_id,last_name,department_id
from employees
NATURAL JOIN departments;

-----資料不同型態-----
select e.employee_id,e.last_name,d.department_name,l.city
from employees e
JOIN departments d USING(department_id)
JOIN locations l USING(location_id);

-------自我合併-------
select e.first_name||' '||e.last_name"員工",m.first_name||' '||m.last_name"主管"
from employees e JOIN employees m
ON e.manager_id = m.employee_id;

select m.last_name"主管",e.last_name"員工"
from employees e join employees m
on m.manager_id = e.employee_id
where m.manager_id=100;

-----外部合併-----
-----左側外部合併-----
select d.department_id,d.department_name,l.location_id,l.city 
from departments d
left outer join locations l
on d.department_id = l.location_id;
-----右側外部合併-----
select d.department_id,d.department_name,l.location_id,l.city 
from departments d
right outer join locations l
on d.department_id = l.location_id;
-----全外部合併-----
select d.department_id,d.department_name,l.location_id,l.city 
from departments d
full outer join locations l
on d.department_id = l.location_id;