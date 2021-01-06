SELECT
  j.JOB_TITLE Cargo,
  ROUND(AVG(e.SALARY), 2) 'Média salarial',
  CASE
    WHEN AVG(e.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(e.SALARY) >= 5801 AND AVG(e.SALARY) <= 7500 THEN 'Pleno'
    WHEN AVG(e.SALARY) >= 7501 AND AVG(e.SALARY) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
    END
  Senioridade
FROM
  hr.jobs j
  LEFT JOIN
  hr.employees e
    ON
      j.JOB_ID = e.JOB_ID
  GROUP BY
    j.JOB_ID
  ORDER BY
    AVG(e.SALARY) ASC,
    Cargo ASC;
