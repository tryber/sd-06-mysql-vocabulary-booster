-- cruza as tabelas pelo JOB_ID
-- recupera os nomes dos cargos (JOB_TITLE) da tabela jobs;
-- calcula a média de salários (SALARY) na tabela employees por cargo;

SELECT JOB_TITLE  as `Cargo`,
  ROUND(AVG(SALARY), 2) AS `Média salarial`,
  CASE
    WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN AVG(SALARY) > 10500 THEN 'CEO'
  END AS `Senioridade`
FROM hr.employees AS e
  LEFT JOIN hr.jobs AS j
    ON e.JOB_ID = j.JOB_ID 
GROUP BY JOB_TITLE
ORDER BY AVG(SALARY), JOB_TITLE;
