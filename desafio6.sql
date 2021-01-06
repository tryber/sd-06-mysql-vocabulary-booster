SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    jobhis.START_DATE AS 'Data de inicio do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history as jobhis
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = jobhis.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jobhis.DEPARTMENT_ID
INNER JOIN hr.jobs AS job
ON job.JOB_ID = jobhis.JOB_ID
ORDER BY emp.FIRST_NAME DESC, JOB_TITLE;
