SELECT UCASE(CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME)) AS 'Nome completo',
jobhis.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.job_history as jobhis
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = jobhis.EMPLOYEE_ID
WHERE MONTH(jobhis.START_DATE) <= 3
ORDER BY emp.FIRST_NAME, jobhis.START_DATE;
