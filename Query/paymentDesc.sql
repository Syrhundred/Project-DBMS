select Patient_Id, payment
from patient_insurance
order by payment desc
limit 10