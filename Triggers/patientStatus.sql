create trigger patientStatusInsert
    after insert on Patient_registration
    begin
        insert into patientStatus(register_id, status) values (new.register_id, 'sick');
    end;

a