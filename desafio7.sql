SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
job_h.START_DATE AS 'Data de início',
e.SAlARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS job_h ON job_h.EMPLOYEE_ID=e.EMPLOYEE_ID
WHERE MONTH(job_h.START_DATE)=01 or MONTH(job_h.START_DATE)=02 OR MONTH(job_h.START_DATE)=03
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), job_h.START_DATE;
