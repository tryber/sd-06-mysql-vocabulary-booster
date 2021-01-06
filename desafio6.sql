SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
emp.HIRE_DATE AS 'Data de início do cargo',
deps.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
JOIN hr.jobs AS jobs
ON emp.JOB_ID = jobs.JOB_ID
JOIN hr.departments AS deps
ON emp.DEPARTMENT_ID = deps.DEPARTMENT_ID
JOIN hr.job_history AS hist
ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, deps.DEPARTMENT_NAME;
