create or replace procedure abdo_pr_test is
begin
dbms_output.put_line('welcome to oracle...!!');
end;
/


begin
abdo_pr_test;
end;
/

create or replace function abdo_fn_test return varchar2 is
v_meg varchar2(2000);
begin
v_meg :='welcome to oracle..!!';
retutn v_meg;
end;
/

select abdo_fn_test from dual;