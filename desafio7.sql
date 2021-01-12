SELECT t_hist.START_DATE AS 'Data de início',
UCASE(CONCAT(t_emp.FIRST_NAME, ' ', t_emp.LAST_NAME)) AS 'Nome completo',
t_emp.SALARY AS 'Salário'
FROM hr.employees AS t_emp
INNER JOIN hr.job_history AS t_hist
ON t_emp.EMPLOYEE_ID = t_hist.EMPLOYEE_ID
WHERE MONTH(t_hist.START_DATE) IN (1, 2, 3)
ORDER BY UCASE(CONCAT(t_emp.FIRST_NAME, ' ', t_emp.LAST_NAME)), t_hist.START_DATE;
