-----lead lag ����-----
select department_id,employee_id,salary,
LEAD(salary,1,0)over(PARTITION by department_id order by salary desc nulls last)
lead,--��11000�٧C���U�@�C--
LAG(salary,1,0)over(PARTITION by department_id order by salary desc nulls last)
lag--�ۤ�--
from employees
WHERE department_id in (20,30)
order by 1,3 desc;

-----first | last vaule����-----
select employee_id,department_id,hire_date,
FIRST_VALUE(hire_date)over(PARTITION by department_id order by hire_date),
hire_date-FIRST_VALUE(hire_date)over(PARTITION by department_id order by hire_date)
from employees
where department_id in (20,30)
ORDER by 2 ;