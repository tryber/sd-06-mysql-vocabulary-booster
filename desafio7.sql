SELECT UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS 'Nome completo',
job_his.START_DATE AS 'Data de início',
employee.SALARY AS 'Salário'
FROM hr.job_history as job_his
INNER JOIN hr.employees AS employee
ON employee.EMPLOYEE_ID = job_his.EMPLOYEE_ID
WHERE MONTH(job_his.START_DATE) <= 3
ORDER BY employee.FIRST_NAME, job_his.START_DATE;
