-----�۵M�X��-----
select employee_id,last_name,department_id
from employees
NATURAL JOIN departments;

-----��Ƥ��P���A-----
select e.employee_id,e.last_name,d.department_name,l.city
from employees e
JOIN departments d USING(department_id)
JOIN locations l USING(location_id);

-------�ۧڦX��-------
select e.first_name||' '||e.last_name"���u",m.first_name||' '||m.last_name"�D��"
from employees e JOIN employees m
ON e.manager_id = m.employee_id;

select m.last_name"�D��",e.last_name"���u"
from employees e join employees m
on m.manager_id = e.employee_id
where m.manager_id=100;

-----�~���X��-----
-----�����~���X��-----
select d.department_id,d.department_name,l.location_id,l.city 
from departments d
left outer join locations l
on d.department_id = l.location_id;
-----�k���~���X��-----
select d.department_id,d.department_name,l.location_id,l.city 
from departments d
right outer join locations l
on d.department_id = l.location_id;
-----���~���X��-----
select d.department_id,d.department_name,l.location_id,l.city 
from departments d
full outer join locations l
on d.department_id = l.location_id;