SELECT UCASE(CONCAT(b.FIRST_NAME, " ",b.LAST_NAME)) AS `Nome completo`,
a.START_DATE AS `Data de início`,
b.SALARY as Salário
FROM hr.job_history AS a INNER JOIN hr.employees AS b ON a.EMPLOYEE_ID = b.EMPLOYEE_ID
WHERE MONTH(a.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
