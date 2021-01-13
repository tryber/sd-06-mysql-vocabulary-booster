SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo funcionário 1`,
em.SALARY AS `Salário funcionário 1`,
em.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(em2.FIRST_NAME, ' ', em2.LAST_NAME) AS `Nome completo funcionário 2`,
em2.SALARY AS `Salário funcionário 2`,
em2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS em,
hr.employees AS em2
WHERE em.JOB_ID = em2.JOB_ID AND em.EMPLOYEE_ID <> em2.EMPLOYEE_ID
ORDER BY 1, 4;
