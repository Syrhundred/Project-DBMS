select PatientID
from patient
where PatientID in(select patientid from patient_registration where Room_num between 500 and 600);
