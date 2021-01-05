SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job_history.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees
INNER JOIN hr.job_history
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) <= 3
ORDER BY employees.FIRST_NAME, job_history.START_DATE;
