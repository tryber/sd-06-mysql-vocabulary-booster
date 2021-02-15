SELECT
CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(START_DATE), '/', MONTH(START_DATE), '/', YEAR(START_DATE)) AS 'Data de início',
CONCAT(DAY(END_DATE), '/', MONTH(START_DATE), '/', YEAR(END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history A
LEFT JOIN hr.employees B
ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados` DESC;
