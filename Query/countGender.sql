select sum(case when gender = 'Male' then 1 else 0 end) count_male,
       sum(case when gender = 'Female' then 1 else 0 end)
                                                        count_female
from patient