SELECT UPPER(CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME)) AS "Nome completo",
START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY
UPPER(CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME)),
START_DATE;
