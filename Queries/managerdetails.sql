select e.employee_id, e.first_name,e.last_name,e.manager_id,(select first_name from employees where employee_id = e.manager_id),(select last_name from employees where employee_id = e.manager_id)
from employees e
order by employee_id
/
