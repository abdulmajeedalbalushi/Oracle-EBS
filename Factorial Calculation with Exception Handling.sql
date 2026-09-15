v_num number := '&eno';
v_fact number := 1;
begin
IF v_num < 0 THEN RAISE_APPLICATION_ERROR(-20001, 'Input must be a positive integer or zero');
END IF;
for i in 1..v_num loop
 v_fact := v_fact * i;
end loop;
 dbms_output.put_line('factorial of'|| v_num || 'is'|| v_fact);
exception
 when others then
 dbms_output.put_line('check your program!!');
end;
/