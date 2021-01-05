SELECT jo.JOB_TITLE AS Cargo,
ROUND(AVG(em.SALARY), 2) AS 'Média salarial',
CASE WHEN AVG(em.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN AVG(em.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN AVG(em.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN AVG(em.SALARY) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs AS jo
INNER JOIN hr.employees AS em
ON jo.JOB_ID = em.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`;
