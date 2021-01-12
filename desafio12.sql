SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS `Nome completo funcionário 1`,
  SALARY AS `Salário funcionário 1`,
  PHONE_NUMBER AS `Telefone funcionário 1`,
  g.n2 AS `Nome completo funcionário 2`,
  g.s2 AS `Salário funcionário 2`,
  g.pn2 AS `Telefone funcionário 2`
FROM hr.employees,
  (
    SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS n2,
      JOB_ID AS j,
      SALARY AS s2,
      PHONE_NUMBER AS pn2
    FROM hr.employees
  ) AS g
WHERE JOB_ID = g.j 
  AND CONCAT(FIRST_NAME, " ", LAST_NAME) <> g.n2
ORDER BY CONCAT(FIRST_NAME, " ", LAST_NAME), g.n2;
