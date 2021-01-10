SELECT j.job_title AS `Cargo`, (j.max_salary - j.min_salary) AS `Variação Salarial`,
ROUND(j.min_salary/12,2) AS `Média mínima mensal`, ROUND(j.max_salary/12,2) AS `Média máxima mensal`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
GROUP BY j.job_id
ORDER BY `Variação Salarial`, j.job_title;
