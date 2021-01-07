SELECT UPPER(CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME)) AS 'Nome completo',
  hist.START_DATE AS 'Data de início',
  emp.SALARY AS 'Salário'
FROM hr.job_history AS hist
INNER JOIN hr.employees AS emp
  ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) = 1
  OR MONTH(hist.START_DATE) = 2
  OR MONTH(hist.START_DATE) = 3
ORDER BY CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) ASC,
  hist.START_DATE ASC;
