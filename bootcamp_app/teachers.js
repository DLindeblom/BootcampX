const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
  SELECT DISTINCT teachers.name as name, cohorts.name as cohort
  FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohort_id = cohorts.id
  Where cohorts.name LIKE '${process.argv[2]}'
  Order by name;
  `)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.name}`)
    })
  })
