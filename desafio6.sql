SELECT 
  UPPER(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) as "Nome completo", 
  job_history.START_DATE as "Data de início" ,
  employees.SALARY as "Salário"
FROM
  hr.job_history
  INNER JOIN hr.employees on employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
  WHERE MONTH(job_history.START_DATE) BETWEEN 1 AND 3
  ORDER BY CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME), START_DATE
