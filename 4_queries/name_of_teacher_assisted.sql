SELECT DISTINCT
  teachers.name as name, cohorts.name as cohort

FROM 
  teachers
JOIN
  assistance_requests ON teacher_id = teachers.id
JOIN
  students ON students.id = student_id
JOIN
  cohorts ON cohort_id = cohorts.id

Where cohorts.name = 'JUL02'

Order by
  name;
