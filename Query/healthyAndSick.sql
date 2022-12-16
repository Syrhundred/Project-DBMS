select sum(case when status = 'healthy' then 1 else 0 end) as healthy_patient,
       sum(case when status = 'sick' then 1 else 0 end)    as sick_patient
from patientStatus