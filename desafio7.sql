SELECT
UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME))  AS 'Nome completo',
hist.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS hist
ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) BETWEEN 01 AND 03
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME),
hist.START_DATE;
