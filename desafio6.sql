SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
h.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees e
RIGHT JOIN hr.job_history h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
LEFT JOIN hr.jobs j ON h.JOB_ID = j.JOB_ID
LEFT JOIN hr.departments d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
