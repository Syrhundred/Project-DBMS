create table if not exists patient_insurance(
    patient_insurance_id int primary key,
    patientid int,
    start_date date,
    endDate date,
    payment NUMBER,
    insurance_number int,
    foreign key(patientid) references patient(patientid)
);