SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(jhist.START_DATE, "%d/%m/%Y") AS `Data de início`,
DATE_FORMAT(jhist.END_DATE, "%d/%m/%Y") AS `Data de rescisão`,
ROUND((DATEDIFF(jhist.END_DATE, jhist.START_DATE))/365, 2) AS `Anos trabalhados`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jhist
ON jhist.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
