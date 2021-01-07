SELECT
  jobs.JOB_TITLE AS 'Cargo',
  ROUND(AVG(employees.SALARY),2) as 'Média salarial',
  CASE
    WHEN AVG(employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN AVG(employees.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN AVG(employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN AVG(employees.SALARY) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM
  hr.employees
INNER JOIN
  jobs ON employees.JOB_ID = jobs.JOB_ID
GROUP BY
  employees.JOB_ID
ORDER BY
  ROUND(AVG(employees.SALARY),2) ASC,
  jobs.JOB_TITLE ASC;
