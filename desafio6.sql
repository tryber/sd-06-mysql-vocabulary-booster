SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
job.JOB_TITLE AS 'Cargo',
jobhist.START_DATE AS 'Data de início do cargo',
depart.DEPARTMENT_NAME AS 'DEPARTAMENTO'
FROM hr.employees AS emp
INNER JOIN hr.departments AS depart
ON depart.DEPARTMENT_ID = emp.DEPARTMENT_ID
INNER JOIN hr.job_history AS jobhist
ON jobhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs as job
ON job.JOB_ID = jobhist.JOB_ID
ORDER BY `Nome completo` DESC, Cargo;
