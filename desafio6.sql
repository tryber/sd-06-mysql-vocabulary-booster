SELECT CONCAT(employees.FIRST_NAME,' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
job_history.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history
INNER JOIN hr.employees
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INNER JOIN hr.departments
ON departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
INNER JOIN hr.jobs
ON jobs.JOB_ID = job_history.JOB_ID
ORDER BY employees.FIRST_NAME DESC, jobs.JOB_TITLE;
