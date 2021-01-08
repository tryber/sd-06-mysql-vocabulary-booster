SELECT CONCAT(E1.FIRST_NAME,  ' ', E1.LAST_NAME) AS 'Nome completo funcionário 1',
CONCAT(E2.FIRST_NAME,  ' ', E2.LAST_NAME) AS 'Nome completo funcionário 2'
FROM hr.employees AS E1 INNER JOIN hr.employees AS E2 ON E1.JOB_ID = E2.JOB_ID
WHERE E1.EMPLOYEE_ID <> E2.EMPLOYEE_ID ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
