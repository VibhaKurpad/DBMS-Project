 select first_name,last_name,salary from employees where salary > =
    5000 + (select min(salary) from employees)
/
