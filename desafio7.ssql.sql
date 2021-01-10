SELECT t_hist.START_TIME, t_emp.FIRST_NAME
FROM hr.employees AS t_emp
INNER JOIN hr.job_history AS t_hist
ON t_emp.EMPLOYEE_ID = t_hist.EMPLOYEE_ID
ORDER BY t_hist.START_TIME;