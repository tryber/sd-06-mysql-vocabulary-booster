SELECT UCASE(CONCAT(E.first_name, '', E.last_name)) AS 'Nome completo',
JH.start_date AS 'Data de início',
E.salary AS 'Salário'
FROM job_history AS JH
INNER JOIN employees AS E ON E.employee_id = JH.employee_id
ORDER BY `Nome completo`, `Data de início`;
