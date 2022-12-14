create trigger patientStatusInsert
    after insert on Patient_registration
    begin
        insert into patientStatus(patientid, status) values (new.patientid, 'sick');
    end;

