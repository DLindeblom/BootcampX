SELECT 
  assignments.day as day, count(assignments.*) as total_assingments

FROM  
  assignments

GROUP BY
  assignments.day

ORDER BY
  day;


