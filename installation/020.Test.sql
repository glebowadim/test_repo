declare
    v_result varchar2(4000);
    v_count number;
begin
    dbms_output.put_line(util_module.get_module_param_val('test_repo', 'Token') || ' - encrypt');
    dbms_output.put_line(util_module.get_decrypted_module_param_val('test_repo', 'Token') || ' - decrypt');

    select mpt.decrypted_value
      into v_result
      from module_param_temp mpt
      join module_param mp on mp.module_param_id = mpt.module_param_id
      join module m on m.module_id = mp.module_id
     where mp.name = 'Token'
       and m.module_name = 'test_repo'
       and mp.program_id = pkg_sec.get_pid();

    dbms_output.put_line(v_result || ' - decrypt2');

    select count(*)
      into v_count
      from module_param_temp;
    dbms_output.put_line(v_count);

end;