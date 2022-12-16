select PatientID
from patient
where exists(select patient_id
             from patient_billing
             where patient_billing.patient_id = patient.PatientID and price < 4000000);