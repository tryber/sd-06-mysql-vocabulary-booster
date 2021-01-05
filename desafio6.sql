SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
jobhis.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs as job
INNER JOIN hr.employees AS emp
ON job.JOB_ID = emp.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
INNER JOIN hr.job_history AS jobhis
ON jobhis.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY emp.FIRST_NAME DESC, job.JOB_TITLE;
