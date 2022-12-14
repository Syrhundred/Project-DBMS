create trigger appointment_completer3
    after insert on patient_disease
    when (select doctor_Id from doctor_department where department_id = 3 and new.disease_id = 5 OR department_id = 3 and new.disease_id = 6) is not null

    begin
        insert into patient_appointment(patientId, doctorId, appointment_date)
        values(new.patientid, (select doctor_Id from doctor_department where department_id = 3 and new.disease_id = 5 OR department_id = 3 and new.disease_id = 6), date('now'));
    end;