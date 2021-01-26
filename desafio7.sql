SELECT UCASE(CONCAT(employees.FIRST_NAME,' ', employees.LAST_NAME)) AS "Nome completo",
job_history.START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) BETWEEN 01 AND 03 
ORDER BY `Nome completo`, `Data de início`;
