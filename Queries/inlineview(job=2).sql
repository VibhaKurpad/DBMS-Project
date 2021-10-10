 select * from 
(select e.employee_id eid,e.first_name fname,e.last_name lname,
 (select count(*) from job_history
 where job_history.employee_id=e.employee_id) countjobs
 from employees e
 order by last_name) 
where countjobs = 2
/
