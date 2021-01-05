SELECT
jobs.job_title AS Cargo,
max_salary - min_salary AS `Variação Salarial`,
ROUND(min_salary/12, 2) AS 'Média mínima mensal',
ROUND(max_salary/12, 2) AS 'Média máxima mensal'
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
GROUP BY jobs.job_title
ORDER BY `Variação Salarial`, Cargo;
