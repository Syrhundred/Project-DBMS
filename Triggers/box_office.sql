create trigger box_office
    after update
    on patientStatus
begin
    insert into patient_billing(billing_id, patient_id, price, date)
    values (((select new.patientid from patient_attended) * 3 + 1), (select new.patientId from patient_attended),
            (select price
             from Medicine,
                  Medicine_report,
                  patient_attended
             where Medicine.Medicine_name = Medicine_report.Medicine_name
               and Medicine_report.patientID = new.PatientID) +
            (select service_price
             from doctor_details,
                  patient_attended
             where (select Doctor_id
                    from patient_attended,
                         patient_appointment
                    where new.PatientID = patient_appointment.patientId) = doctorId) +
            (select payment
             from patient_insurance
             where ((select new.patientid from patient_attended) = patient_insurance.Patient_Id)), date('now'));
end;

