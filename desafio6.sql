SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.employees as emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs as j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS dep
ON jh.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, JOB_TITLE
;
