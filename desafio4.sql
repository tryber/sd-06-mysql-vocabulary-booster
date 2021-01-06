SELECT job_title AS 'Cargo', ROUND(AVG(max_salary - min_salary), 2) AS `Média  Salarial`,
CASE
WHEN ROUND(AVG(max_salary - min_salary), 2) >= 2000 AND ROUND(AVG(max_salary - min_salary), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(max_salary - min_salary), 2) >= 5801 AND ROUND(AVG(max_salary - min_salary), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(max_salary - min_salary), 2) >= 7501 AND ROUND(AVG(max_salary - min_salary), 2) <= 10500 THEN 'Júnior'
WHEN ROUND(AVG(max_salary - min_salary), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs 
GROUP BY job_title
ORDER BY job_title ASC, 'Senioridade';
