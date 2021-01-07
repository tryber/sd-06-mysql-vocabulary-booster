SELECT J.job_title AS 'Cargo', ROUND(AVG(E.salary), 2)  AS 'Média salarial',
CASE
  WHEN AVG(E.salary) >= 2000 AND AVG(E.salary) <= 5800 THEN 'Júnior'
  WHEN AVG(E.salary) >= 5801 AND AVG(E.salary) <= 7500 THEN 'Pleno'
  WHEN AVG(E.salary) >= 7501 AND AVG(E.salary) <= 10500 THEN 'Sênior'
  WHEN AVG(E.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
 FROM jobs AS J
 INNER JOIN employees AS E ON J.job_id = E.job_id
 GROUP BY J.job_id
 ORDER BY `Média salarial`, `Cargo`;
