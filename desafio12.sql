SELECT CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) AS `Nome completo funcionário 1`,
emp1.SALARY AS `Salário funcionário 1`,
emp1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME) AS `Nome completo funcionário 2`,
emp2.SALARY AS `Salário funcionário 2`,
emp2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM employees emp1, employees emp2
WHERE emp1.JOB_ID = emp2.JOB_ID
AND emp1.Employee_ID <> emp2.Employee_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
