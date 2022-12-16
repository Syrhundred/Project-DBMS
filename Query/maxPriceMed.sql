select pat.firstName, r.medicine_name, m.price
from patient pat,
     Medicine_report r,
     Medicine m
where pat.PatientID = r.patientID
  and r.Medicine_name = m.Medicine_name
  and m.price = (select max(price) from Medicine);