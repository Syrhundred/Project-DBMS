select count(patientID), bloodGroup
from patient
group by bloodGroup;