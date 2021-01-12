SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME))  as `Nome completo`,
JH.START_DATE AS `Data de início`,
E.SALARY AS Salário
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
