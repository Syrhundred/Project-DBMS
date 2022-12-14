create trigger appointment_completer2
    after insert on patient_disease
    when (select doctor_Id from doctor_department where department_id = 2 and new.disease_id = 3 OR department_id = 2 and new.disease_id = 4) is not null

    begin
        insert into patient_appointment(patientId, doctorId, appointment_date)
        values(new.patientid, (select doctor_Id from doctor_department where department_id = 2 and new.disease_id = 3 OR department_id = 2 and new.disease_id = 4), date('now'));
    end;