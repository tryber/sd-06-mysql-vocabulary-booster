SELECT CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo funcionário 1',
E.salary AS 'Salário funcionário 1', E.job_id AS 'cargo',
E.phone_number AS 'Telefone funcionário 1',
CONCAT(E2.first_name, ' ', E2.last_name) AS 'Nome completo funcionário 2',
E2.salary AS 'Salário funcionário 2',
E2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS E
INNER JOIN hr.employees AS E2
ON E.job_id = E2.job_id
AND E.employee_id <> E2.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
