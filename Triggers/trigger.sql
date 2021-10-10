create or replace trigger salary_error
before insert or update of salary 
on employee
for each row
declare
do_nothing exception;
begin
if((INSERTING OR UPDATING)) then
	log_err2(:new.manager_emp_id,:new.emp_id,:new.salary);
end if;
end;
/