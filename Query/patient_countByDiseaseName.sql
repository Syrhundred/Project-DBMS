select count(patient_disease.patientID) as patient_count, disease.disease_name
from patient_disease
         inner join disease on patient_disease.disease_id = disease.disease_id
group by disease.disease_name;