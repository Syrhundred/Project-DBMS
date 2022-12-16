begin;

update patient_insurance
set payment = payment - 100000
where end_date > '01/01/2025';

commit;