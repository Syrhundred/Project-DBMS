select doctorId, name, service_price
from doctor_details
where service_price > (select avg(service_price) from doctor_details)
order by service_price desc