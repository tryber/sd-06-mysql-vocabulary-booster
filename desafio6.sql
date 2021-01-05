SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
job_title AS Cargo,
hire_date AS 'Data de início do cargo',
department_name AS Departamento
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
INNER JOIN departments ON employees.department_id = departments.department_id
GROUP BY jobs.job_title
ORDER BY CONCAT(first_name, ' ', last_name) DESC, Cargo;
