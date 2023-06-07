declare
    v_number number;
begin
    dbms_output.put_line('Test');
    select 111
      into v_number
      from dual;
    dbms_output.put_line(v_number);
end;