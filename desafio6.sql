SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  j.job_title AS 'Cargo',
  jh.start_date AS 'Data de início do cargo',
  d.department_name AS 'Departamento'
FROM hr.job_history AS jh
LEFT JOIN hr.employees AS e
  ON jh.employee_id = e.employee_id
LEFT JOIN hr.jobs AS j
  ON jh.JOB_ID = j.JOB_ID
LEFT JOIN hr.departments AS d
  ON d.department_id = jh.department_id
WHERE j.job_title IS NOT NULL
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title ASC
