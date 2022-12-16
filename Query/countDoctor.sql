select count(doctor_department.doctor_id) as count_doctor, department.department_name
from doctor_department,
     department
where doctor_department.department_id = department.department_id
group by department.department_id