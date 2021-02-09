SELECT
CONCAT(he.FIRST_NAME, ' ', he.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jh.START_DATE, "%d/%m/%Y") AS `Data de início`,
DATE_FORMAT(jh.END_DATE, "%d/%m/%Y") AS `Data de rescisão`,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/ 365, 2) AS `Anos trabalhados`
FROM hr.employees AS he
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = he.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
