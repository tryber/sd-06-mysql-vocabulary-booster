SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
  j.JOB_TITLE 'Cargo',
  h.START_DATE 'Data de início do cargo',
  d.DEPARTMENT_NAME 'Departamento'
FROM hr.job_history h
  LEFT JOIN hr.jobs j
    ON h.JOB_ID = j.JOB_ID
  LEFT JOIN hr.departments d
    ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
  INNER JOIN hr.employees e
    ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY e.FIRST_NAME DESC, e.LAST_NAME DESC, j.JOB_TITLE ASC;
