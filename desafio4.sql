SELECT
  a.job_title AS 'Cargo',
  ROUND(AVG(b.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(b.SALARY) >= 2000 AND AVG(b.SALARY) <= 5800  THEN 'Júnior'
        WHEN AVG(b.SALARY) >= 5801 AND AVG(b.SALARY) <= 7500  THEN 'Pleno'
        WHEN AVG(b.SALARY) >= 7501 AND AVG(b.SALARY) <= 10500  THEN 'Sênior'
        WHEN AVG(b.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM hr.employees AS b
JOIN hr.jobs AS a
ON b.job_id = a.job_id
GROUP BY Cargo
ORDER BY ROUND(AVG(b.SALARY), 2), Cargo;
