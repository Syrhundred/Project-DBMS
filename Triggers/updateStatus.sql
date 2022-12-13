create trigger updateStatus
    after insert on patient_attended
    when (select Register_id from patient_registration
                             where Register_id = new.register_id) is not null
    begin
        update patientStatus set status = 'healthy';
    end;
