SELECT job.job_title AS 'Cargo', 
ROUND(AVG(emp.salary), 2) AS `Média salarial`,
CASE
WHEN AVG(emp.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(emp.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(emp.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS job
INNER JOIN hr.employees AS emp
ON emp.job_id = job.job_id
GROUP BY job.job_title
ORDER BY `Média salarial`, job.job_title;
