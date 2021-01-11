SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees
INNER JOIN hr.job_history AS jh
ON employees.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, jh.START_DATE;
