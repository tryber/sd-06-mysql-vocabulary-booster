SELECT job_title AS 'Cargo',
(max_salary - min_salary) AS 'Variação Salarial',
ROUND(AVG(min_salary/12), 2) AS 'Média mínima mensal',
ROUND(AVG(max_salary/12), 2) AS 'Média máxima mensal'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
ON (emp.job_id = job.job_id) GROUP BY job.job_title, (job.max_salary - job.min_salary)
ORDER BY (job.max_salary - job.min_salary) ASC, job.job_title ASC;