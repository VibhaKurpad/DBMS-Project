select e.employee_id, e.first_name,e.last_name,jo.job_title,j.start_date,j.end_date from
employees e,job_history j, jobs jo
where e.employee_id = j.employee_id
and j.job_id = jo.job_id
union
select e.employee_id, e.first_name,e.last_name,null,null,null from
employees e
where e.employee_id not in(select employee_id from job_history)
/
