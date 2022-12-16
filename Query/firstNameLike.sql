select PatientID
from patient
where firstName like 'C%'
intersect
select patientId
from patient_appointment;
