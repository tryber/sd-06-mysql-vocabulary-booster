--desafio4.sql
SELECT j.JOB_TITLE AS `Cargo`, ROUND(AVG(e.SALARY),2) AS `Média salarial`,
CASE
WHEN  ROUND(AVG(e.SALARY),2) < 5800 THEN  'Júnior'
WHEN  ROUND(AVG(e.SALARY),2) BETWEEN  5801 AND 7500 THEN 'Pleno'
WHEN  ROUND(AVG(e.SALARY),2) BETWEEN  7501 AND 10500 THEN 'Sênior'
WHEN  ROUND(AVG(e.SALARY),2) >= 10501 THEN 'CEO'
END AS `Senioridade`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY `Média salarial` ASC, JOB_TITLE ASC;
