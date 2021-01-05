SELECT jobs.JOB_TITLE AS `Cargo`, ROUND(AVG(employees.SALARY), 2) AS `Média salarial`,
CASE
  WHEN employees.SALARY BETWEEN 2000 AND 5800 THEN "Júnior"
  WHEN employees.SALARY BETWEEN 5801 AND 7500 THEN "Pleno"
  WHEN employees.SALARY BETWEEN 7501 AND 10500 THEN "Sênior"
  ELSE "CEO"
END AS `Senioridade`
FROM hr.jobs
INNER JOIN employees ON hr.jobs.JOB_ID = hr.employees.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
