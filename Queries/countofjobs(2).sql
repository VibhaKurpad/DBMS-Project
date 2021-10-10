select e.employee_id,e.first_name,e.last_name,
(select count(*) from job_history
where job_history.employee_id=e.employee_id) countjobs
from employees e
/
