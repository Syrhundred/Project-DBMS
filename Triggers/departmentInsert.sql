create trigger departmentInsert
    after insert on doctor_details
    when  (select department_id from department
                            where department_name = new.department_name) is not null
    begin
    insert into doctor_department(department_id, doctor_Id) values ((select department_id from department
                            where department_name = new.department_name), new.doctorId);
        end;
