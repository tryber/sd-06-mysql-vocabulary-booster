SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
JOB_TITLE AS Cargo, HIRE_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees INNER JOIN jobs ON jobs.JOB_ID = employees.JOB_ID
INNER JOIN departments ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), DEPARTMENT_NAME;
