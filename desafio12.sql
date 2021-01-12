SELECT CONCAT(one.FIRST_NAME, ' ', one.LAST_NAME) AS `Nome completo funcionário 1`,
one.salary AS `Salario funcionário 1`,
one.phone_number AS `Telefone funcionário 1`,
CONCAT(two.FIRST_NAME, ' ', two.LAST_NAME) AS `Nome completo funcionário 2`,
two.salary AS `Salario funcionário 2`,
two.phone_number AS `Telefone funcionário 2`
FROM (hr.employees AS two
INNER JOIN hr.employees AS one
ON one.job_id = two.job_id and one.employee_id != two.employee_id)
order by one.FIRST_NAME, two.FIRST_NAME;
