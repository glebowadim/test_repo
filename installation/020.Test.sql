declare
    v_result varchar2(4000);
begin
    dbms_output.put_line(util_module.get_module_param_val('test_repo', 'Token') || ' - encrypt');
    dbms_output.put_line(util_module.get_decrypted_module_param_val('test_repo', 'Token') || ' - decrypt');

    select version
      into v_result
      from module
     where module_name = 'test000';
    dbms_output.put_line(v_result);

end;