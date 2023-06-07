declare
    v_id number;
begin
    dbms_output.put_line('Test');
    dbms_output.put_line('Test');
    dbms_output.put_line('Test');
    dbms_output.put_line('Test');
    select module_id
      into v_id
      from module
     where module_id = 1;
     end;