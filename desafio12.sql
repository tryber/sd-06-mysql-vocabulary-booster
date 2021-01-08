-- TEST 03
SELECT CONCAT(F01.FIRST_NAME, ' ', F01.LAST_NAME) AS `Nome completo funcionário 1`,
F01.SALARY AS 'Salário funcionário 1',
F01.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(F02.FIRST_NAME, ' ', F02.LAST_NAME) AS `Nome completo funcionário 2`,
F02.SALARY AS 'Salário funcionário 2',
F02.PHONE_NUMBER AS 'Telefone funcionário 2'

FROM hr.employees AS F01
JOIN hr.employees AS F02

WHERE F01.JOB_ID = F02.JOB_ID
AND F01.EMPLOYEE_ID <> F02.EMPLOYEE_ID
-- F01.FIRST_NAME <> F02.FIRST_NAME
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

-- TEST 02
-- SELECT CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME) AS `Nome completo funcionário 1`,
-- hr.employees.SALARY AS 'Salário funcionário 1',
-- hr.employees.PHONE_NUMBER AS 'Telefone funcionário 1'
-- FROM hr.employees
-- WHERE hr.employees.JOB_ID = hr.employees.JOB_ID
-- AND hr.employees.EMPLOYEE_ID <> hr.employees.EMPLOYEE_ID

-- UNION

-- SELECT CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME) AS `Nome completo funcionário 2`,
-- hr.employees.SALARY AS 'Salário funcionário 2',
-- hr.employees.PHONE_NUMBER AS 'Telefone funcionário 2'
-- FROM hr.employees
-- WHERE hr.employees.JOB_ID = hr.employees.JOB_ID
-- AND hr.employees.EMPLOYEE_ID <> hr.employees.EMPLOYEE_ID

-- ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

-- TEST 01
-- SELECT CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME) AS `Nome completo funcionário 1`,
-- hr.employees.SALARY AS 'Salário funcionário 1',
-- hr.employees.PHONE_NUMBER AS 'Telefone funcionário 1',
-- CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME) AS `Nome completo funcionário 2`,
-- hr.employees.SALARY AS 'Salário funcionário 2',
-- hr.employees.PHONE_NUMBER AS 'Telefone funcionário 2'
-- FROM hr.employees
-- WHERE hr.employees.JOB_ID = hr.employees.JOB_ID AND
-- hr.employees.EMPLOYEE_ID <> hr.employees.EMPLOYEE_ID
-- CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME) <> CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME)

-- joao.cargo = maria.cargo
-- ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
