SELECT DISTINCT
  teachers.name as name, cohorts.name as cohort, count(assistance_requests.teacher_id) as total_assistances

FROM 
  teachers
JOIN
  assistance_requests ON teacher_id = teachers.id
JOIN
  students ON students.id = student_id
JOIN
  cohorts ON cohort_id = cohorts.id

Where cohorts.name = 'JUL02'

Group by
  teachers.name, cohorts.name

Order by
  teachers.name;