begin
    dbms_output.put_line('Test');
    util_module.delete_module_packages(:p_module_id);
end;