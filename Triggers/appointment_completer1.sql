CREATE TRIGGER appointment_completer1
    after insert on patient_disease
    when (select doctor_Id from doctor_department where department_id = 1 and new.disease_id = 1 OR department_id = 1 and new.disease_id = 2) is not null

    begin
        insert into patient_appointment(patientId, doctorId, appointment_date)
        values(new.patientid, (select doctor_Id from doctor_department where department_id = 1 and new.disease_id = 1 OR department_id = 1 and new.disease_id = 2), date('now'));
    end;

