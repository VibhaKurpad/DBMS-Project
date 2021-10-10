select e.employee_id, e.first_name,e.last_name,m.manager_id,m.first_name,m.last_name
from employees e,employees m
where e.manager_id = m.employee_id
order by employee_id
/
