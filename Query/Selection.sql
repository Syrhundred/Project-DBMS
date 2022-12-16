select patientStatus.patientId, disease_name, status
from patientStatus,
     disease,
     patient_disease
where patientStatus.PatientID = patient_disease.PatientID
  and patient_disease.disease_id = disease.disease_id