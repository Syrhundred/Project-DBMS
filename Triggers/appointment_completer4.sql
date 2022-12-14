create trigger appointment_completer4
    after insert on patient_disease
    when (select doctor_Id from doctor_department where department_id = 4 and new.disease_id = 7 OR department_id = 3 and new.disease_id = 8) is not null

    begin
        insert into patient_appointment(patientId, doctorId, appointment_date)
        values(new.patientid, (select doctor_Id from doctor_department where department_id = 4 and new.disease_id = 7 OR department_id = 4 and new.disease_id = 8), date('now'));
    end;