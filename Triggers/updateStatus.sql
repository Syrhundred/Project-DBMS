create trigger updateStatus
    after insert on patient_attended
    begin update patientStatus set status = 'healthy'
                                   where patientStatus.patientId = new.patientId;
        end;
