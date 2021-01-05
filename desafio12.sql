SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
e.SALARY AS `Salário funcionário 1`,
e.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS `Nome completo funcionário 2`,
a.SALARY AS `Salário funcionário 2`,
a.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees e
JOIN hr.employees a ON e.JOB_ID = a.JOB_ID
WHERE e.PHONE_NUMBER <> a.PHONE_NUMBER
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
