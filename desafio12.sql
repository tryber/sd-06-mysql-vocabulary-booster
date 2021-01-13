SELECT CONCAT(col_1.FIRST_NAME, ' ', col_1.LAST_NAME) AS `Nome completo funcionário 1`,
col_1.SALARY AS `Salário funcionário 1`,
col_1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(col_2.FIRST_NAME, ' ', col_2.LAST_NAME) AS `Nome completo funcionário 2`,
col_2.SALARY AS `Salário funcionário 2`,
col_2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS col_1
JOIN hr.employees AS col_2 ON col_1.JOB_ID = col_2.JOB_ID
WHERE col_1.EMPLOYEE_ID <> col_2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
