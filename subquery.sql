-----�l�d��-----
select first_name,department_id,salary
from employees 
where salary > (SELECT salary from employees 
where first_name = 'Nancy');

-----�P�D�ަP����-----
select first_name,employee_id,department_id,manager_id
from employees
where (manager_id,department_id) = 
(select manager_id,department_id 
from employees
where employee_id = 104)and employee_id <> 104;

-----�h�C�d��-----
select last_name,salary 
from employees
WHERE salary > all (SELECT DISTINCT salary
from employees
WHERE job_id = 'AC_ACCOUNT');

----------
