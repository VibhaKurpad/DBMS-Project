select employee_id, fname,lname,job_title,sdate,edate from
(select employee_id,e.first_name fname, e.last_name lname,j.job_id jobid,j.start_date sdate,j.end_date edate
from employees e left outer join job_history j using(employee_id)
order by employee_id) emp_det left outer join jobs
ON emp_det.jobid = jobs.job_id
/
