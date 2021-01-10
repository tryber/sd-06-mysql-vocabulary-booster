SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
jobs.job_title AS `Cargo`,
job_history.start_date AS `Data de início do cargo`,
departments.department_name AS `Departamentos`
FROM (((employees
INNER JOIN jobs
ON employees.job_id = jobs.job_id)
INNER JOIN job_history
ON employees.job_id = job_history.job_id)
INNER JOIN departments
ON employees.department_id = departments.department_id)
ORDER BY `Nome completo` ASC, jobs.job_title ASC;
