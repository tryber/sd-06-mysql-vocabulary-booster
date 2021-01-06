SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
JH.START_DATE AS `Data de início`,
E.SALARY AS `Salário`
FROM hr.employees AS E,
hr.job_history AS JH
WHERE E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início`;
