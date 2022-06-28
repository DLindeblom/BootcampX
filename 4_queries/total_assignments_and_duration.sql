SELECT
  assignments.day as day, count(assignments.id) as number_of_assignments, sum(assignments.duration) as duration

FROM
  assignments

Group by
  day

order by
  day;