SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
J.START_DATE AS `Data de início`,
J.END_DATE AS `Data de rescisão`,
YEAR(J.END_DATE) - YEAR(J.START_DATE) AS `Anos trabalhados`
FROM hr.employees AS E
JOIN hr.job_history AS J ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
