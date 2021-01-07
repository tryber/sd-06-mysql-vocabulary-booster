SELECT CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS 'Nome completo',
  jobs.JOB_TITLE AS 'Cargo',
  hist.START_DATE AS 'Data de início do cargo',
  dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hist
INNER JOIN hr.employees AS emp
  ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
  ON hist.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS dep
  ON hist.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) DESC,
  jobs.JOB_TITLE ASC;
