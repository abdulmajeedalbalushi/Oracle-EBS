create or replace procedure abdo_pr_sysdt(errbuf out varchar2,retcode out number) is
 v_dt date;
begin
select sysdate into v_dt from dual;
fnd_file.put_line(fnd_file.log,'you can see log details here!');
 fnd_file.put_line(fnd_file.log,'current date='||v_dt);
exception
 when others then
 fnd_file.put_line(fnd_file.output,'check your program:'||errbuf||'errcode='||retcode);
end;
/