SELECT
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS `Nome completo funcionário 1`,
e.salary AS `Salário funcionário 1`,
e.phone_number AS `Telefone funcionário 1`,
CONCAT(em.FIRST_NAME, " ", em.LAST_NAME) AS `Nome completo funcionário 2`,
em.salary AS `Salário funcionário 2`,
em.phone_number AS `Telefone funcionário 2`
FROM hr.employees AS e, hr.employees AS em
WHERE em.job_id = e.job_id AND e.employee_id <> em.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
