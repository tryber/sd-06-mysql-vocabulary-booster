SELECT
UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jhist.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jhist
ON e.EMPLOYEE_ID = jhist.EMPLOYEE_ID
WHERE MONTH(jhist.START_DATE) BETWEEN 0 AND 3
ORDER BY `Nome completo`, jhist.START_DATE ASC;
