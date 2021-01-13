SELECT
UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job_history.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees
INNER JOIN job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) BETWEEN 1 AND 3
ORDER BY UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)),
job_history.START_DATE asc;
