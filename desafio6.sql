SELECT
CONCAT(first_name, ' ', last_name) AS `Nome completo`,
job_title AS Cargo,
start_date AS `Data de início do cargo`,
department_name AS Departamento
FROM job_history
INNER JOIN jobs ON job_history.job_id = jobs.job_id
INNER JOIN employees ON job_history.employee_id = employees.employee_id
INNER JOIN departments ON job_history.department_id = departments.department_id
ORDER BY `Nome completo` DESC, Cargo;
