SELECT CONCAT(employee.FIRST_NAME,' ', employee.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
job_his.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history as job_his
INNER JOIN hr.employees AS employee
ON employee.EMPLOYEE_ID = job_his.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = job_his.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = job_his.JOB_ID
ORDER BY employee.FIRST_NAME DESC, jobs.JOB_TITLE;
