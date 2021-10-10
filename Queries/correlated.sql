select employee_id,first_name,last_name from employees 
where 2<= (
select count(*) from job_history 
where job_history.employee_id = employees.employee_id )
/
