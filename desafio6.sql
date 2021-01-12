SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
hist.START_DATE AS 'Data de início do cargo',
dp.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hist
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = hist.JOB_ID
INNER JOIN hr.departments AS dp ON dp.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, j.JOB_TITLE;
