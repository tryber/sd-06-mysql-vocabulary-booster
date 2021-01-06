SELECT
UPPER(CONCAT(first_name, ' ', last_name)) AS `Nome completo`,
start_date AS `Data de início`,
salary AS Salario
FROM hr.employees
INNER JOIN hr.job_history ON job_history.employee_id = employees.employee_id
WHERE MONTH(start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
