SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jhist.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jhist
ON e.EMPLOYEE_ID = jhist.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON jhist.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS dep
ON e.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
