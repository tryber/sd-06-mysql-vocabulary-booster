SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
job_history.START_DATE AS `Data de início`,
employees.SALARY AS `Salário`
FROM employees INNER JOIN job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE job_history.START_DATE LIKE '%01-%' 
OR job_history.START_DATE LIKE '%02-%'
OR job_history.START_DATE LIKE '%03-%'
ORDER BY `Nome completo`, `Data de início`;
