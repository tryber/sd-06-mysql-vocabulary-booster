SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
jobhist.START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobhist
ON jobhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(jobhist.START_DATE) = 01 || MONTH(jobhist.START_DATE) = 02 || MONTH(jobhist.START_DATE) = 03
ORDER BY `Nome completo`, jobhist.START_DATE;
