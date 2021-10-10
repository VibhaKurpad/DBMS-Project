create or replace procedure log_err2(mgr_id in varchar2,emp_id in varchar2,emp_sal in number)
as pragma autonomous_transaction;
begin
   insert into mgr_alert values(mgr_id, 'salary update for employee_id', emp_id, emp_sal);
   commit;
exception
   when others then rollback;
   raise;
end;
/