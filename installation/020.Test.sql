begin
    dbms_output.put_line(util_module.get_module_param_val('test_repo', 'Token') || ' - encrypt');
    dbms_output.put_line(util_module.get_decrypted_module_param_val('test_repo', 'Token') || ' - decrypt');
end;