SELECT CONCAT(F.FIRST_NAME, ' ', F.LAST_NAME) AS `Nome completo funcionário 1`,
F.SALARY AS `Salário funcionário 1`,
F.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo funcionário 2`,
E.SALARY AS `Salário funcionário 2`,
E.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS E
INNER JOIN hr.employees AS F ON E.JOB_ID = F.JOB_ID AND CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) <> CONCAT(F.FIRST_NAME, ' ', F.LAST_NAME)
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
