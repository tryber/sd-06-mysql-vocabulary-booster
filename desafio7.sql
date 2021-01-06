SELECT
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
jh.start_date AS `Data de início do cargo`,
e.salary AS Salário
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh 
ON e.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) <= 3
ORDER BY `Nome completo`, `Data de início do cargo`;
