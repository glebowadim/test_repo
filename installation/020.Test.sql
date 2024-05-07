declare
    v_result varchar2(4000);
    v_count number;
begin
    dbms_output.put_line(util_module.get_module_param_val('test_repo', 'Token') || ' - encrypt');
    dbms_output.put_line(util_module.get_decrypted_module_param_val('test_repo', 'Token') || ' - decrypt');

    select count(*)
      into v_count
      from module_param_temp;
    dbms_output.put_line(v_count);

end;