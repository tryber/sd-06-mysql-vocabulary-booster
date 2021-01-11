SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
JOB_TITLE AS Cargo,
hist.START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hist
INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments AS dp ON dp.DEPARTMENT_ID = e.DEPARTMENT_ID
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = hist.EMPLOYEE_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, DEPARTMENT_NAME;
