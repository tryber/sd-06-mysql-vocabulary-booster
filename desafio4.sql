SELECT co.job_title AS 'Cargo',
ROUND(AVG(ca.salary), 2) AS `Média salarial`,
CASE
WHEN AVG(ca.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(ca.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(ca.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS ca
INNER JOIN hr.jobs as co
ON co.job_id = ca.job_id
GROUP BY co.job_title
ORDER BY `Média salarial`, co.job_title;
