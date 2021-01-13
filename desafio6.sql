SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
job_h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS job_h ON e.EMPLOYEE_ID=job_h.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON job_h.JOB_ID=j.JOB_ID
INNER JOIN hr.departments AS d ON job_h.DEPARTMENT_ID=d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;
