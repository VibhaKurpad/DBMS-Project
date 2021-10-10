select e.employee_id,e.first_name,e.last_name from employees e,
(select e.employee_id
from employees e inner join job_history j
on e.employee_id = j.employee_id
group by e.employee_id
having count(j.job_id) >=2) emp_id 
where e.employee_id = emp_id.employee_id
/
