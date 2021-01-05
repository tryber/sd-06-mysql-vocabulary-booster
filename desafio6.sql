SELECT CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME) AS 'Nome completo',
Jobs.JOB_TITLE AS 'Cargo',
Job_History.START_DATE AS 'Data de início do cargo',
Departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS job_history
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = job_history.JOB_ID
INNER JOIN hr.employees AS employees
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
ORDER BY Employees.FIRST_NAME DESC, Jobs.JOB_TITLE;
