SELECT
  CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) as 'Nome completo',
  JOB_TITLE as 'Cargo',
  job_history.START_DATE as 'Data de início do cargo',
  DEPARTMENT_NAME as 'Departamento'
FROM
  hr.employees
  INNER JOIN hr.job_history on employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
  INNER JOIN hr.departments on job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
  INNER JOIN hr.jobs on job_history.JOB_ID = jobs.JOB_ID
ORDER BY
  CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) DESC,
  JOB_TITLE ASC
