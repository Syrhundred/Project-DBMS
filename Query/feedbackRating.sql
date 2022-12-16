select feedback.doctor_id, name, rating
from feedback,
     doctor_details
where feedback.doctor_id = doctor_details.doctorId
  and rating >= 3