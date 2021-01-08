SELECT CONCAT(ucase(e.FIRST_NAME), " ", ucase(e.LAST_NAME)) AS "Nome completo",
jh.START_DATE AS "Data de início",
e.SALARY AS "Salário"
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
