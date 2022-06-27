SELECT 
  count(*)

FROM
  students

WHERE
  cohort_id <= 3; --(correct answer is (WHERE cohort_id IN (1,2,3)))