SELECT
UPPER(CONCAT(first_name, ' ', last_name)) AS `Nome completo`,
hire_date AS `Data de início`,
salary AS Salario
FROM employees
ORDER BY `Nome completo`, `Data de início`;
