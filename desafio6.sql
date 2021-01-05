SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jo.JOB_TITLE AS Cargo,
emp.HIRE_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jo
ON emp.JOB_ID = jo.JOB_ID
INNER JOIN hr.departments AS dep
ON emp.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY emp.FIRST_NAME, emp.LAST_NAME, Cargo;
