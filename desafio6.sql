SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
emp.hire_date AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.jobs
ON jobs.JOB_ID = emp.JOB_ID
INNER JOIN hr.departments AS dep
ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, jobs.JOB_TITLE ASC;
